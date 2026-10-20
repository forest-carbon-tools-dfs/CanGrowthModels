# ============================================================
# Canadian Forest Growth & Yield Model Registry
# Schema-driven validation of the three registry tables.
#
# The *_schema_definition.csv files in data/ are the single source of truth
# for required columns, required values, data types and controlled values.
# Nothing here verifies that a claim is accurate; it only checks structure.
# ============================================================

registry_tables <- c("models", "model_coverage", "model_links")

registry_keys <- list(
  models = "model_id",
  model_coverage = "coverage_id",
  model_links = "link_id"
)

#' Read one registry CSV with every column as character
#' @noRd
read_registry_csv <- function(path) {
  readr::read_csv(
    path,
    col_types = readr::cols(.default = readr::col_character()),
    progress = FALSE
  )
}

#' Read a registry table (suffix "" ) or its schema definition
#' @noRd
read_registry_table <- function(table, data_dir = "data") {
  read_registry_csv(file.path(data_dir, paste0(table, ".csv")))
}

#' @noRd
read_registry_schema <- function(table, data_dir = "data") {
  read_registry_csv(file.path(data_dir, paste0(table, "_schema_definition.csv")))
}

#' Read all registry tables and their schemas
#' @noRd
read_registry <- function(data_dir = "data") {
  list(
    tables = stats::setNames(
      lapply(registry_tables, read_registry_table, data_dir = data_dir),
      registry_tables
    ),
    schemas = stats::setNames(
      lapply(registry_tables, read_registry_schema, data_dir = data_dir),
      registry_tables
    )
  )
}

#' Split semicolon-separated cell values into a trimmed character vector
#' @noRd
split_multi <- function(x) {
  x <- x[!is.na(x)]
  if (length(x) == 0L) {
    return(character())
  }
  values <- trimws(unlist(strsplit(x, ";", fixed = TRUE)))
  values[nzchar(values)]
}

#' Check one table against its schema definition
#'
#' @return A list with character vectors `errors` and `warnings`.
#' @noRd
check_table_schema <- function(data, schema, table, key = registry_keys[[table]]) {
  errors <- character()
  warnings <- character()
  fields <- schema$field_name

  missing_cols <- setdiff(fields, names(data))
  extra_cols <- setdiff(names(data), fields)
  if (length(missing_cols) > 0L) {
    errors <- c(errors, paste0(
      table, ": missing columns: ", paste(missing_cols, collapse = ", ")
    ))
  }
  if (length(extra_cols) > 0L) {
    errors <- c(errors, paste0(
      table, ": columns not in the schema definition: ",
      paste(extra_cols, collapse = ", ")
    ))
  }

  for (i in seq_len(nrow(schema))) {
    field <- schema$field_name[[i]]
    if (!field %in% names(data)) {
      next
    }
    values <- data[[field]]
    present <- !is.na(values) & nzchar(trimws(values))

    if (identical(schema$required[[i]], "yes") && any(!present)) {
      errors <- c(errors, paste0(
        table, ".", field, ": ", sum(!present), " blank value(s) in a required field"
      ))
    }

    type <- schema$data_type[[i]]
    allowed <- schema$allowed_values[[i]]
    shown <- values[present]

    if (identical(type, "integer")) {
      bad <- shown[!grepl("^[0-9]+$", shown)]
      if (length(bad) > 0L) {
        errors <- c(errors, paste0(
          table, ".", field, ": not an integer: ", paste(unique(bad), collapse = ", ")
        ))
      }
    } else if (identical(type, "date")) {
      parsed <- suppressWarnings(as.Date(shown, format = "%Y-%m-%d"))
      bad <- shown[!grepl("^\\d{4}-\\d{2}-\\d{2}$", shown) | is.na(parsed)]
      if (length(bad) > 0L) {
        errors <- c(errors, paste0(
          table, ".", field, ": not a YYYY-MM-DD date: ", paste(unique(bad), collapse = ", ")
        ))
      }
    } else if (identical(type, "url")) {
      bad <- shown[!grepl("^https?://", shown, ignore.case = TRUE)]
      if (length(bad) > 0L) {
        errors <- c(errors, paste0(
          table, ".", field, ": ", length(bad), " value(s) are not http(s) URLs"
        ))
      }
    } else if (!is.na(allowed) && nzchar(allowed)) {
      allowed_values <- trimws(strsplit(allowed, "|", fixed = TRUE)[[1L]])
      bad <- setdiff(split_multi(shown), allowed_values)
      if (length(bad) > 0L) {
        message_text <- paste0(
          table, ".", field, ": values not in the allowed list: ",
          paste(bad, collapse = ", ")
        )
        # Free-text fields with a suggested vocabulary only warn.
        if (identical(type, "controlled")) {
          errors <- c(errors, message_text)
        } else {
          warnings <- c(warnings, message_text)
        }
      }
    }
  }

  if (all(key %in% names(data))) {
    duplicated_keys <- duplicated(data[key]) | duplicated(data[key], fromLast = TRUE)
    if (any(duplicated_keys)) {
      errors <- c(errors, paste0(
        table, ": duplicate key (", paste(key, collapse = ", "), "): ",
        paste(unique(do.call(paste, c(as.list(data[duplicated_keys, key, drop = FALSE]), sep = " / "))),
              collapse = "; ")
      ))
    }
  }

  list(errors = errors, warnings = warnings)
}

#' Check references between tables
#' @noRd
check_registry_references <- function(tables) {
  errors <- character()
  warnings <- character()
  model_ids <- tables$models$model_id

  for (table in c("model_coverage", "model_links")) {
    unknown <- setdiff(unique(stats::na.omit(tables[[table]]$model_id)), model_ids)
    if (length(unknown) > 0L) {
      errors <- c(errors, paste0(
        table, ": model_id not found in models: ", paste(unknown, collapse = ", ")
      ))
    }
  }

  coverage <- tables$model_coverage

  # Check for models with no links, no official links, and no coverage.
  links <- tables$model_links
  models_with_links <- unique(stats::na.omit(links$model_id))
  no_links <- setdiff(model_ids, models_with_links)
  if (length(no_links) > 0L) {
    warnings <- c(warnings, paste0(
      "models with no link: ", paste(no_links, collapse = ", ")
    ))
  }

  official_types <- c("official_website", "model_download", "source_code")
  has_official <- unique(links$model_id[
    !is.na(links$model_id) & links$link_type %in% official_types
  ])
  no_official <- setdiff(model_ids, has_official)
  if (length(no_official) > 0L) {
    warnings <- c(warnings, paste0(
      "models with no website, download or source code link: ",
      paste(no_official, collapse = ", ")
    ))
  }

  # Models claiming public_download availability should have a model_download link.
  models <- tables$models
  has_download <- unique(links$model_id[
    !is.na(links$model_id) & links$link_type == "model_download"
  ])
  public_download_ids <- models$model_id[
    !is.na(models$availability) & models$availability == "public_download"
  ]
  no_download <- setdiff(public_download_ids, has_download)
  if (length(no_download) > 0L) {
    warnings <- c(warnings, paste0(
      "models marked public_download with no model_download link: ",
      paste(no_download, collapse = ", ")
    ))
  }

  models_with_coverage <- unique(stats::na.omit(coverage$model_id))
  no_coverage <- setdiff(model_ids, models_with_coverage)
  if (length(no_coverage) > 0L) {
    warnings <- c(warnings, paste0(
      "models with no coverage row (not shown on the map): ",
      paste(no_coverage, collapse = ", ")
    ))
  }

  list(errors = errors, warnings = warnings)
}

#' Validate the whole registry
#'
#' @param data_dir Folder holding the registry CSVs and schema definitions.
#' @param quiet Suppress the console summary.
#' @return Invisibly, a list with `errors`, `warnings` and `tables`.
#'   Aborts when any error is found.
#' @noRd
validate_registry <- function(data_dir = "data", quiet = FALSE) {
  registry <- read_registry(data_dir)
  errors <- character()
  warnings <- character()

  for (table in registry_tables) {
    result <- check_table_schema(
      registry$tables[[table]], registry$schemas[[table]], table
    )
    errors <- c(errors, result$errors)
    warnings <- c(warnings, result$warnings)
  }

  if (length(errors) == 0L) {
    refs <- check_registry_references(registry$tables)
    errors <- c(errors, refs$errors)
    warnings <- c(warnings, refs$warnings)
  }

  if (!quiet) {
    for (table in registry_tables) {
      cat(sprintf("%-15s %d rows\n", table, nrow(registry$tables[[table]])))
    }
    for (w in warnings) {
      cat("WARNING:", w, "\n")
    }
  }

  if (length(errors) > 0L) {
    rlang::abort(c(
      "registry validation failed",
      stats::setNames(errors, rep("x", length(errors)))
    ))
  }

  if (!quiet) {
    cat("Registry validation passed.\n")
  }
  invisible(list(errors = errors, warnings = warnings, tables = registry$tables))
}
