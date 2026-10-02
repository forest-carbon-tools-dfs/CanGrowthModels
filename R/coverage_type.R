library(sf)
library(dplyr)

coverage <- regions |>
  left_join(
    model_coverage,
    by = "region"
  )

st_write(
  coverage,
  "data/model_coverage.geojson",
  delete_dsn = TRUE
)