library(testthat)

project_root <- normalizePath(file.path(testthat::test_path(), "..", ".."))

test_that("the Models page renders current output types without warnings", {
  render_page <- function() {
    previous_dir <- setwd(project_root)
    on.exit(setwd(previous_dir), add = TRUE)

    code <- knitr::purl(
      text = readLines("models.qmd"),
      documentation = 0L,
      quiet = TRUE
    )
    paste(
      capture.output(eval(parse(text = code), envir = new.env())),
      collapse = "\n"
    )
  }

  expect_no_warning(html <- render_page())
  expect_match(html, "<strong>Output types: </strong>", fixed = TRUE)
  expect_match(html, 'data-outputs="[^"]+"')
})
