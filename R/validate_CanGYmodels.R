# ============================================================
# Canadian Forest Growth & Yield Model Registry
# validate_models.R
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
  "developer_organization",
  "model_type",
  "outputs",
  "status",
  "last_verified",
  "verification_status"
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
# 3. Check for duplicate model IDs
# ------------------------------------------------------------

duplicate_ids <- models |>
  count(model_id) |>
  filter(n > 1)

if (nrow(duplicate_ids) > 0) {
  stop(
    "Duplicate model_id values found: ",
    paste(duplicate_ids$model_id, collapse = ", ")
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
  unique(models$model_type),
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
  unique(models$status),
  valid_status
)

if (length(bad_status) > 0) {
  stop(
    "Invalid status values: ",
    paste(bad_status, collapse = ", ")
  )
}

# ------------------------------------------------------------
# 5. Check model IDs are not blank
# ------------------------------------------------------------

blank_ids <- models |>
  filter(is.na(model_id) | model_id == "")

if (nrow(blank_ids) > 0) {
  stop("One or more records have a blank model_id")
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