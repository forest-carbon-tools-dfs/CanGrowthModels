library(testthat)

project_root <- normalizePath(file.path(testthat::test_path(), "..", ".."))
source(file.path(project_root, "R", "registry.R"))
source(file.path(project_root, "R", "geo.R"))
data_dir <- file.path(project_root, "data")

ecozone_codes <- c(
  "taiga_plains",
  "taiga_shield", "boreal_shield", "atlantic_maritime", "mixedwood_plains",
  "boreal_plains", "prairies", "taiga_cordillera", "boreal_cordillera",
  "pacific_maritime", "montane_cordillera", "hudson_plains"
)

test_that("ecozones.gpkg has exactly the 12 codes, valid geometry, EPSG:4326", {
  ecozones <- sf::st_read(
    file.path(data_dir, "geospatial", "ecozones", "ecozones.gpkg"),
    quiet = TRUE
  )
  expect_equal(nrow(ecozones), 12)
  expect_setequal(ecozones$ecozone_code, ecozone_codes)
  expect_true(all(sf::st_is_valid(ecozones)))
  expect_equal(sf::st_crs(ecozones)$epsg, 4326L)
})

test_that("province_ecozones.csv has valid codes and covers every jurisdiction", {
  lookup <- read_registry_csv(
    file.path(data_dir, "geospatial", "ecozones", "province_ecozones.csv")
  )
  canada <- sf::st_read(file.path(data_dir, "geospatial", "canada", "ca.shp"), quiet = TRUE)
  jurisdiction_codes <- substring(canada$id, 3L)

  expect_true(all(lookup$ecozone_code %in% ecozone_codes))
  expect_true(all(lookup$jurisdiction_code %in% jurisdiction_codes))
  expect_setequal(unique(lookup$jurisdiction_code), jurisdiction_codes)
})

test_that("check_coverage_ecozones flags an ecozone outside its province and passes a valid one", {
  lookup <- data.frame(
    jurisdiction_code = c("NS", "NS", "BC"),
    ecozone_code = c("atlantic_maritime", "boreal_shield", "pacific_maritime"),
    stringsAsFactors = FALSE
  )
  coverage <- data.frame(
    coverage_id = c("bad_row", "good_row", "blank_row"),
    jurisdiction_code = c("NS", "BC", "NS"),
    ecozones = c("pacific_maritime", "pacific_maritime", NA),
    stringsAsFactors = FALSE
  )

  warnings <- check_coverage_ecozones(coverage, lookup)

  expect_length(warnings, 1)
  expect_match(warnings, "bad_row.*NS.*pacific_maritime")
})
