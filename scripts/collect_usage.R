# Collect GitHub usage statistics and merge them into the CSV archive.
# Run from the project root:
#   Rscript scripts/collect_usage.R
#
# Environment:
#   USAGE_DIR          archive folder (default "usage-data")
#   GITHUB_REPOSITORY  owner/name (default: this registry)
#   GH_TOKEN           token for the gh CLI. Traffic needs a token with
#                      repository Administration (read) access; the default
#                      workflow token cannot read it, so traffic is skipped
#                      with a warning and the other statistics still update.

source("R/usage.R")

repo <- Sys.getenv("GITHUB_REPOSITORY", "forest-carbon-tools-dfs/CanGrowthModels")
usage_dir <- Sys.getenv("USAGE_DIR", "usage-data")
dir.create(usage_dir, showWarnings = FALSE, recursive = TRUE)
archive_path <- function(name) file.path(usage_dir, name)

# Traffic: 14-day windows merged into the daily archive
for (kind in c("views", "clones")) {
  window <- tryCatch(
    parse_traffic(gh_api(sprintf("repos/%s/traffic/%s", repo, kind)), kind),
    error = function(e) {
      warning("skipping ", kind, ": ", conditionMessage(e), call. = FALSE)
      NULL
    }
  )
  if (!is.null(window)) {
    file <- archive_path(sprintf("traffic_%s.csv", kind))
    readr::write_csv(merge_daily(read_archive(file), window), file)
  }
}

# Stars, forks, watchers: one snapshot row per day
file <- archive_path("repo_snapshot.csv")
snapshot <- parse_repo_snapshot(gh_api(sprintf("repos/%s", repo)))
readr::write_csv(merge_snapshot(read_archive(file), snapshot), file)

# Release asset downloads: cumulative counts, one snapshot per day
file <- archive_path("release_downloads.csv")
downloads <- parse_release_downloads(gh_api(sprintf("repos/%s/releases?per_page=100", repo)))
if (nrow(downloads) > 0) {
  readr::write_csv(merge_snapshot(read_archive(file), downloads), file)
}

message("usage archive updated in ", usage_dir)
