library(readr)
library(dplyr)

coverage <- read_csv(
  "data/model_coverage.csv",
  show_col_types = FALSE
)

required_columns <- c(
  "coverage_id",
  "model_id",
  "model_name",
  "jurisdiction_code",
  "coverage_basis",
  "source_reference",
  "verification_status"
)

missing_columns <- setdiff(required_columns, names(coverage))

if (length(missing_columns) > 0) {
  stop(
    "Missing required columns: ",
    paste(missing_columns, collapse = ", ")
  )
}

blank_required <- coverage |>
  filter(
    is.na(coverage_id) | coverage_id == "" |
      is.na(model_id) | model_id == "" |
      is.na(model_name) | model_name == "" |
      is.na(jurisdiction_code) | jurisdiction_code == "" |
      is.na(coverage_basis) | coverage_basis == "" |
      is.na(source_reference) | source_reference == "" |
      is.na(verification_status) | verification_status == ""
  )

if (nrow(blank_required) > 0) {
  stop("One or more coverage records have blank required values")
}

duplicate_ids <- coverage |>
  count(coverage_id) |>
  filter(n > 1)

if (nrow(duplicate_ids) > 0) {
  stop(
    "Duplicate coverage_id values found: ",
    paste(duplicate_ids$coverage_id, collapse = ", ")
  )
}

valid_jurisdictions <- c(
  "AB", "BC", "SK", "MB", "ON", "QC", "NB", "NS", "PE", "NL",
  "YT", "NT", "NU", "unknown"
)

bad_jurisdictions <- setdiff(
  unique(coverage$jurisdiction_code),
  valid_jurisdictions
)

if (length(bad_jurisdictions) > 0) {
  stop(
    "Invalid jurisdiction_code values: ",
    paste(bad_jurisdictions, collapse = ", ")
  )
}

valid_basis <- c("calibrated_for", "intended_for", "validated_in")
basis_values <- strsplit(coverage$coverage_basis, ";", fixed = TRUE)
bad_basis <- setdiff(trimws(unlist(basis_values)), valid_basis)

if (length(bad_basis) > 0) {
  stop(
    "Invalid coverage_basis values: ",
    paste(unique(bad_basis), collapse = ", ")
  )
}

bad_verification <- setdiff(
  unique(coverage$verification_status),
  c("unverified", "verified")
)

if (length(bad_verification) > 0) {
  stop(
    "Invalid verification_status values: ",
    paste(bad_verification, collapse = ", ")
  )
}

models <- read_csv("data/models.csv", show_col_types = FALSE)
unmatched_models <- setdiff(unique(coverage$model_id), unique(models$model_id))

if (length(unmatched_models) > 0) {
  warning(
    "Coverage records lack matching data/models.csv records: ",
    paste(unmatched_models, collapse = ", ")
  )
}

cat("Coverage validation complete. Records:", nrow(coverage), "\n")