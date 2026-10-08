# Validate model-to-document associations without reading local manuals.
# A listed document is associated with a model, not verified as support
# for any particular model or coverage claim.

library(readr)

# Check the mapping fields and pair uniqueness.
sources <- read_csv("data/model_sources.csv", show_col_types = FALSE)
required_columns <- c("model_id", "source_file")
missing_columns <- setdiff(required_columns, names(sources))

if (length(missing_columns) > 0) {
  stop("Missing model source columns: ", paste(missing_columns, collapse = ", "))
}

blank_required <- is.na(sources$model_id) | trimws(sources$model_id) == "" |
  is.na(sources$source_file) | trimws(sources$source_file) == ""

if (any(blank_required)) {
  stop("One or more model source associations have blank required values")
}

duplicate_pairs <- duplicated(sources[required_columns])

if (any(duplicate_pairs)) {
  stop("Duplicate model-to-document associations found")
}

# Store only filenames; local manual directories are not version-controlled.
invalid_files <- !grepl("\\.md$", sources$source_file, ignore.case = TRUE) |
  grepl("/", sources$source_file, fixed = TRUE) |
  grepl("\\", sources$source_file, fixed = TRUE)

if (any(invalid_files)) {
  stop("Model sources must be Markdown filenames without directory paths")
}

models <- read_csv("data/models.csv", show_col_types = FALSE)
unknown_models <- setdiff(unique(sources$model_id), unique(models$model_id))

if (length(unknown_models) > 0) {
  stop("Model sources reference unknown model_id values: ",
       paste(unknown_models, collapse = ", "))
}

cat("Model source association validation complete. Associations:", nrow(sources), "\n")
