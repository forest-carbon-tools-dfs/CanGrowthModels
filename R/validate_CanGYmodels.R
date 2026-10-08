# ============================================================
# Canadian Forest Growth & Yield Model Registry
# Validate selected required columns, record IDs, and controlled values
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
  "record_id",
  "model_id",
  "model_name",
  "source_file",
  "verification_status",
  "stand_origin"
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
# 3. Check for duplicate record IDs (model_id may repeat across sources)
# ------------------------------------------------------------

duplicate_ids <- models |>
  count(record_id) |>
  filter(n > 1)

if (nrow(duplicate_ids) > 0) {
  stop(
    "Duplicate record_id values found: ",
    paste(duplicate_ids$record_id, collapse = ", ")
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

valid_stand_origins <- c(
  "natural_origin",
  "managed",
  "both",
  "unknown"
)

bad_stand_origins <- setdiff(
  unique(na.omit(models$stand_origin)),
  valid_stand_origins
)

if (length(bad_stand_origins) > 0) {
  stop(
    "Invalid stand_origin values: ",
    paste(bad_stand_origins, collapse = ", ")
  )
}

# ------------------------------------------------------------
# 5. Check IDs are not blank and verification_status is valid
# ------------------------------------------------------------

blank_ids <- models |>
  filter(
    is.na(record_id) | record_id == "" |
      is.na(model_id) | model_id == ""
  )

if (nrow(blank_ids) > 0) {
  stop("One or more records have a blank record_id or model_id")
}

blank_stand_origins <- models |>
  filter(is.na(stand_origin) | stand_origin == "")

if (nrow(blank_stand_origins) > 0) {
  stop("One or more records have a blank stand_origin")
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
cat("Number of records:", nrow(models), "\n")
cat("Number of distinct models:", n_distinct(models$model_id), "\n")

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