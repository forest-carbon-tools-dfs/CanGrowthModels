library(testthat)

# Run from the project root: Rscript tests/testthat.R
test_dir("tests/testthat", reporter = "summary", stop_on_failure = TRUE)
