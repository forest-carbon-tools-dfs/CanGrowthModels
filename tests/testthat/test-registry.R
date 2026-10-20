library(testthat)

project_root <- normalizePath(file.path(testthat::test_path(), "..", ".."))
source(file.path(project_root, "R", "registry.R"))
data_dir <- file.path(project_root, "data")

# Minimal in-memory registry checked against the real schema definitions.
make_tables <- function() {
  list(
    models = data.frame(
      model_id = "m1", model_name = "Model One", developers = NA,
      contributors = NA, organization = NA,
      model_type = "whole_stand", species = NA, minimum_inputs = NA,
      outputs = NA, management_options = NA, other_features = NA,
      programming_language = "unknown",
      management_context = "unknown", notes = NA, last_reviewed = "2026-10-19",
      stringsAsFactors = FALSE
    ),
    model_coverage = data.frame(
      coverage_id = "c1", model_id = "m1",
      jurisdiction_code = "BC", region_detail = "BC_interior",
      stand_scope = NA, stringsAsFactors = FALSE
    ),
    model_links = data.frame(
      link_id = "l1", model_id = "m1", link_type = "official_website",
      title = "Site", url = "https://example.org", accessed_date = "2026-10-06",
      stringsAsFactors = FALSE
    )
  )
}

check_all <- function(tables) {
  errors <- character()
  for (table in registry_tables) {
    schema <- read_registry_schema(table, data_dir)
    errors <- c(errors, check_table_schema(tables[[table]], schema, table)$errors)
  }
  c(errors, check_registry_references(tables)$errors)
}

test_that("the committed registry passes validation", {
  expect_no_error(validate_registry(data_dir, quiet = TRUE))
})

test_that("schema definitions parse cleanly and match the data files", {
  for (table in registry_tables) {
    schema <- read_registry_schema(table, data_dir)
    expect_equal(
      names(schema),
      c("field_name", "data_type", "required", "description", "allowed_values", "example")
    )
    expect_false(anyNA(schema$field_name))
    expect_setequal(names(read_registry_table(table, data_dir)), schema$field_name)
  }
})

test_that("a valid in-memory registry has no errors", {
  result <- check_all(make_tables())
  expect_length(result, 0)
  # Also verify that a valid registry produces no warnings
  tables <- make_tables()
  refs <- check_registry_references(tables)
  expect_length(refs$warnings, 0)
})

test_that("models missing links or coverage produce warnings", {
  tables <- make_tables()
  # Add a second model with no links and no coverage
  m2 <- tables$models
  m2$model_id <- "m2"
  m2$model_name <- "Model Two"
  tables$models <- rbind(tables$models, m2)
  refs <- check_registry_references(tables)
  expect_length(refs$errors, 0)
  expect_true(any(grepl("models with no link: .*m2", refs$warnings)))
  expect_true(any(grepl("models with no website, repository or software link: .*m2", refs$warnings)))
  expect_true(any(grepl("models with no coverage row", refs$warnings)))
})

test_that("duplicate keys, bad controlled values and blank required fields are errors", {
  tables <- make_tables()
  tables$models <- rbind(tables$models, tables$models)
  tables$models$management_context <- c("managed", NA)
  tables$model_links$link_type <- "website"
  tables$model_links$title <- NA
  errors <- check_all(tables)
  expect_true(any(grepl("duplicate key", errors)))
  expect_true(any(grepl("management_context.*blank", errors)))
  expect_true(any(grepl("link_type.*website", errors)))
  expect_true(any(grepl("model_links.title.*blank", errors)))
})

test_that("only Canadian provinces and territories are accepted as jurisdiction codes", {
  tables <- make_tables()
  tables$model_coverage$jurisdiction_code <- "BC_interior"
  errors <- check_all(tables)
  expect_true(any(grepl("jurisdiction_code.*BC_interior", errors)))
})

test_that("unknown model references, bad URLs, dates and columns are errors", {
  tables <- make_tables()
  tables$model_coverage$model_id <- "ghost"
  tables$model_links$url <- "ftp://example.org"
  tables$model_links$accessed_date <- "06/10/2026"
  tables$models$last_reviewed <- "yesterday"
  tables$models$status <- "active"
  errors <- check_all(tables)
  expect_true(any(grepl("model_coverage: model_id not found", errors)))
  expect_true(any(grepl("not http\\(s\\) URLs", errors)))
  expect_true(any(grepl("accessed_date.*YYYY-MM-DD", errors)))
  expect_true(any(grepl("last_reviewed.*YYYY-MM-DD", errors)))
  expect_true(any(grepl("columns not in the schema definition: status", errors)))
})
