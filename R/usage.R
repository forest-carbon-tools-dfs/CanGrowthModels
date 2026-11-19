# ============================================================
# Usage tracking helpers: collect GitHub traffic, stars/forks and release
# download counts, and merge them into append-only CSV archives.
#
# GitHub only keeps 14 days of traffic, so the weekly workflow
# (.github/workflows/collect-usage.yml) archives each window and these
# helpers keep the archive free of duplicates.
# ============================================================

#' Call the GitHub REST API through the gh CLI and parse the JSON reply
#' @noRd
gh_api <- function(path) {
  # Files avoid the line splitting that corrupts long JSON replies captured via stdout = TRUE
  out_file <- tempfile(fileext = ".json")
  err_file <- tempfile(fileext = ".txt")
  on.exit(unlink(c(out_file, err_file)), add = TRUE)

  status <- system2("gh", c("api", path), stdout = out_file, stderr = err_file)
  if (status != 0) {
    stop("gh api ", path, " failed: ", paste(readLines(err_file, warn = FALSE), collapse = " "), call. = FALSE)
  }
  jsonlite::read_json(out_file)
}

#' Turn a traffic reply (views or clones) into a date / count / uniques table
#' @noRd
parse_traffic <- function(reply, field) {
  days <- reply[[field]]
  if (length(days) == 0) {
    return(data.frame(date = as.Date(character()), count = integer(), uniques = integer()))
  }
  data.frame(
    date = as.Date(vapply(days, function(d) substr(d$timestamp, 1, 10), character(1))),
    count = vapply(days, function(d) as.integer(d$count), integer(1)),
    uniques = vapply(days, function(d) as.integer(d$uniques), integer(1))
  )
}

#' Merge a new traffic window into the archive
#'
#' Rows are keyed by date. When a date appears in both, the new row wins
#' because GitHub revises the most recent (partial) days.
#' @noRd
merge_daily <- function(existing, new) {
  if (is.null(existing) || nrow(existing) == 0) {
    merged <- new
  } else {
    merged <- rbind(existing[!existing$date %in% new$date, names(new)], new)
  }
  merged[order(merged$date), , drop = FALSE]
}

#' Add a dated snapshot row, replacing any earlier row for the same date
#' @noRd
merge_snapshot <- function(existing, new, key = "date") {
  if (is.null(existing) || nrow(existing) == 0) {
    return(new)
  }
  existing[[key]] <- as.character(existing[[key]])
  new[[key]] <- as.character(new[[key]])
  merged <- rbind(existing[!existing[[key]] %in% new[[key]], names(new)], new)
  merged[order(merged[[key]]), , drop = FALSE]
}

#' One-row snapshot of stars, forks, watchers and open issues
#' @noRd
parse_repo_snapshot <- function(repo, date = Sys.Date()) {
  data.frame(
    date = as.character(date),
    stars = as.integer(repo$stargazers_count),
    forks = as.integer(repo$forks_count),
    watchers = as.integer(repo$subscribers_count %||% NA_integer_),
    open_issues = as.integer(repo$open_issues_count)
  )
}

#' One row per release asset with its cumulative download count
#'
#' Returns an empty table when there are no releases or assets. Source
#' archives are not counted by GitHub, only uploaded assets.
#' @noRd
parse_release_downloads <- function(releases, date = Sys.Date()) {
  rows <- lapply(releases, function(release) {
    lapply(release$assets, function(asset) {
      data.frame(
        date = as.character(date),
        tag = release$tag_name,
        asset = asset$name,
        downloads = as.integer(asset$download_count)
      )
    })
  })
  rows <- unlist(rows, recursive = FALSE)
  if (length(rows) == 0) {
    return(data.frame(date = character(), tag = character(), asset = character(), downloads = integer()))
  }
  do.call(rbind, rows)
}

#' Read an archive CSV, or NULL if it does not exist yet
#' @noRd
read_archive <- function(path) {
  if (!file.exists(path)) {
    return(NULL)
  }
  readr::read_csv(path, show_col_types = FALSE, progress = FALSE)
}

`%||%` <- function(x, y) if (is.null(x)) y else x
