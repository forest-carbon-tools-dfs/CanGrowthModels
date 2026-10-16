# ============================================================
# Canadian Forest Growth & Yield Model Registry
# Validate selected required columns, unique model IDs, and controlled values
# in data/models.csv. This does not verify source claims or compare
# model fields with coverage and link records.
# ============================================================

library(readr)
library(dplyr)

# ------------------------------------------------------------
# 1. Read model data
# ------------------------------------------------------------

models <- read_csv(
  "data/models.csv",
  show_col_types = FALSE
)

# ------------------------------------------------------------
# 2. Check that required columns exist
# ------------------------------------------------------------

required_columns <- c(
  "model_id",
  "model_name",
  "developers",
  "organization",
  "minimum_inputs",
  "source_file",
  "verification_status",
  "management_context"
)

missing_columns <- setdiff(
  required_columns,
  names(models)
)

if (length(missing_columns) > 0) {
  stop(
    "Missing required columns: ",
    paste(missing_columns, collapse = ", ")
  )
}

# ------------------------------------------------------------
# 3. Check that each model has one row
# ------------------------------------------------------------

duplicate_ids <- models |>
  count(model_id) |>
  filter(n > 1)

if (nrow(duplicate_ids) > 0) {
  rlang::abort(
    paste0(
      "duplicate `model_id` values found: ",
      paste(duplicate_ids$model_id, collapse = ", ")
    )
  )
}

# ------------------------------------------------------------
# 4. Check controlled values
# ------------------------------------------------------------

valid_model_types <- c(
  "whole_stand",
  "individual_tree",
  "diameter_class",
  "hybrid",
  "other",
  "unknown"
)

bad_model_types <- setdiff(
  unique(na.omit(models$model_type)),
  valid_model_types
)

if (length(bad_model_types) > 0) {
  stop(
    "Invalid model_type values: ",
    paste(bad_model_types, collapse = ", ")
  )
}

valid_status <- c(
  "active",
  "maintained",
  "legacy",
  "archived",
  "unknown"
)

bad_status <- setdiff(
  unique(na.omit(models$status)),
  valid_status
)

if (length(bad_status) > 0) {
  stop(
    "Invalid status values: ",
    paste(bad_status, collapse = ", ")
  )
}

valid_management_contexts <- c(
  "unmanaged",
  "managed",
  "unmanaged_managed",
  "unknown"
)

bad_management_contexts <- setdiff(
  unique(na.omit(models$management_context)),
  valid_management_contexts
)

if (length(bad_management_contexts) > 0) {
  stop(
    "Invalid management_context values: ",
    paste(bad_management_contexts, collapse = ", ")
  )
}

# ------------------------------------------------------------
# 5. Check IDs are not blank and verification_status is valid
# ------------------------------------------------------------

blank_ids <- models |>
  filter(is.na(model_id) | trimws(model_id) == "")

if (nrow(blank_ids) > 0) {
  rlang::abort("one or more models have a blank `model_id`")
}

blank_management_contexts <- models |>
  filter(is.na(management_context) | management_context == "")

if (nrow(blank_management_contexts) > 0) {
  stop("One or more records have a blank management_context")
}

bad_verification <- setdiff(
  unique(models$verification_status),
  c("unverified", "verified")
)

if (length(bad_verification) > 0) {
  stop(
    "Invalid verification_status values: ",
    paste(bad_verification, collapse = ", ")
  )
}

# ------------------------------------------------------------
# 6. Report results
# ------------------------------------------------------------

cat("\nValidation complete.\n")
cat("Number of models:", nrow(models), "\n")

cat("\nModels by status:\n")

print(
  models |>
    count(status)
)

cat("\nModels by model type:\n")

print(
  models |>
    count(model_type)
)