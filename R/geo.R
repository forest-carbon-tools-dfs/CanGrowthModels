# Ecozone lookup helpers shared by map.qmd and tests/testthat/test-ecozones.R.
# Assumes R/registry.R is already sourced (uses its split_multi()).

#' Flag model_coverage rows whose explicit ecozones fall outside their
#' jurisdiction, per the province x ecozone overlap lookup
#'
#' @param coverage model_coverage data frame (character columns) with
#'   `coverage_id`, `jurisdiction_code` and `ecozones` (semicolon-separated;
#'   blank rows are skipped, since blank means province-wide).
#' @param lookup province_ecozones data frame with `jurisdiction_code` and
#'   `ecozone_code` (data/geospatial/ecozones/province_ecozones.csv).
#' @return A character vector of warnings, one per inconsistent row; empty
#'   when every explicit ecozone is within its jurisdiction.
#' @noRd
check_coverage_ecozones <- function(coverage, lookup) {
  allowed_by_jurisdiction <- split(lookup$ecozone_code, lookup$jurisdiction_code)

  warnings <- character()
  for (i in seq_len(nrow(coverage))) {
    row <- coverage[i, ]
    claimed <- split_multi(row$ecozones)
    if (length(claimed) == 0L) {
      next
    }
    allowed <- allowed_by_jurisdiction[[row$jurisdiction_code]]
    allowed <- if (is.null(allowed)) character() else allowed
    unmatched <- setdiff(claimed, allowed)
    if (length(unmatched) > 0L) {
      warnings <- c(warnings, paste0(
        "model_coverage.", row$coverage_id, ": ecozone(s) not within ",
        row$jurisdiction_code, ": ", paste(unmatched, collapse = ", ")
      ))
    }
  }
  warnings
}
