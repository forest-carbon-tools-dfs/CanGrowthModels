library(readr)

links <- read_csv("data/model_links.csv", show_col_types = FALSE)
models <- read_csv("data/models.csv", show_col_types = FALSE)

required_columns <- c(
  "link_id",
  "model_id",
  "link_type",
  "title",
  "url",
  "verification_status"
)

missing_columns <- setdiff(required_columns, names(links))

if (length(missing_columns) > 0) {
  stop(
    "Missing required columns: ",
    paste(missing_columns, collapse = ", ")
  )
}

blank_required <- is.na(links$link_id) | links$link_id == "" |
  is.na(links$model_id) | links$model_id == "" |
  is.na(links$link_type) | links$link_type == "" |
  is.na(links$title) | links$title == "" |
  is.na(links$url) | links$url == "" |
  is.na(links$verification_status) | links$verification_status == ""

if (any(blank_required)) {
  stop("One or more model link records have blank required values")
}

duplicate_ids <- unique(links$link_id[duplicated(links$link_id)])

if (length(duplicate_ids) > 0) {
  stop(
    "Duplicate link_id values found: ",
    paste(duplicate_ids, collapse = ", ")
  )
}

valid_link_types <- c(
  "official_website", "manual", "software", "source_code", "publication", "other"
)
bad_link_types <- setdiff(unique(links$link_type), valid_link_types)

if (length(bad_link_types) > 0) {
  stop(
    "Invalid link_type values: ",
    paste(bad_link_types, collapse = ", ")
  )
}

bad_urls <- links$url[!grepl("^https?://", links$url, ignore.case = TRUE)]

if (length(bad_urls) > 0) {
  stop("Model links must use HTTP or HTTPS URLs")
}

bad_verification <- setdiff(
  unique(links$verification_status),
  c("unverified", "verified")
)

if (length(bad_verification) > 0) {
  stop(
    "Invalid verification_status values: ",
    paste(bad_verification, collapse = ", ")
  )
}

unknown_models <- setdiff(unique(links$model_id), unique(models$model_id))

if (length(unknown_models) > 0) {
  stop(
    "Links reference unknown model_id values: ",
    paste(unknown_models, collapse = ", ")
  )
}

has_record_id <- !is.na(links$record_id) & links$record_id != ""

if (any(has_record_id)) {
  model_for_record <- setNames(models$model_id, models$record_id)
  linked_record_models <- unname(model_for_record[links$record_id[has_record_id]])

  if (any(is.na(linked_record_models)) ||
      any(linked_record_models != links$model_id[has_record_id])) {
    stop("A record_id link is missing or belongs to a different model_id")
  }
}

cat("Model link validation complete. Links:", nrow(links), "\n")