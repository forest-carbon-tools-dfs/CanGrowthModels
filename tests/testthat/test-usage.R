library(testthat)

project_root <- normalizePath(file.path(testthat::test_path(), "..", ".."))
source(file.path(project_root, "R", "usage.R"))

traffic_reply <- function(...) {
  list(views = lapply(list(...), function(d) {
    list(timestamp = paste0(d[[1]], "T00:00:00Z"), count = d[[2]], uniques = d[[3]])
  }))
}

test_that("a new traffic window overwrites revised days and keeps older history", {
  old <- parse_traffic(traffic_reply(list("2026-01-01", 5, 2), list("2026-01-02", 1, 1)), "views")
  new <- parse_traffic(traffic_reply(list("2026-01-02", 4, 3), list("2026-01-03", 7, 2)), "views")

  merged <- merge_daily(old, new)

  expect_equal(as.character(merged$date), c("2026-01-01", "2026-01-02", "2026-01-03"))
  expect_equal(merged$count, c(5L, 4L, 7L))
})

test_that("merging into an empty archive returns the new window", {
  new <- parse_traffic(traffic_reply(list("2026-01-03", 7, 2)), "views")
  expect_equal(merge_daily(NULL, new), new)
})

test_that("an empty traffic reply yields an empty typed table", {
  empty <- parse_traffic(list(views = list()), "views")
  expect_equal(nrow(empty), 0)
  expect_named(empty, c("date", "count", "uniques"))
})

test_that("a repeat run on the same day replaces that day's snapshot", {
  first <- parse_repo_snapshot(
    list(stargazers_count = 1, forks_count = 0, open_issues_count = 2),
    date = as.Date("2026-01-01")
  )
  rerun <- parse_repo_snapshot(
    list(stargazers_count = 3, forks_count = 1, subscribers_count = 2, open_issues_count = 2),
    date = as.Date("2026-01-01")
  )

  merged <- merge_snapshot(first, rerun)

  expect_equal(nrow(merged), 1)
  expect_equal(merged$stars, 3L)
  expect_equal(merged$watchers, 2L)
})

test_that("release downloads are one row per asset and empty without assets", {
  releases <- list(
    list(tag_name = "v1", assets = list(
      list(name = "a.zip", download_count = 10),
      list(name = "b.zip", download_count = 2)
    )),
    list(tag_name = "v0", assets = list())
  )

  out <- parse_release_downloads(releases, date = as.Date("2026-01-01"))

  expect_equal(out$asset, c("a.zip", "b.zip"))
  expect_equal(out$downloads, c(10L, 2L))
  expect_equal(nrow(parse_release_downloads(list(list(tag_name = "v0", assets = list())))), 0)
})
