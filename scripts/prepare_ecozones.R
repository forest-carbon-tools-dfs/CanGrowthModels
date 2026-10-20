# One-time, re-runnable build of the simplified ecozone layer and the
# province x ecozone lookup used by the ecozone view in map.qmd. Run from the
# project root:
#   Rscript scripts/prepare_ecozones.R
#
# Source: National Ecological Framework for Canada (AAFC), under the Open
# Government Licence - Canada. See data/geospatial/ecozones/license_gis.txt.
# The source GeoPackage (data/geospatial/ecozones/source/Canada_Ecozones_forested.gpkg)
# is the AAFC ecozones clipped to the Canada land boundary (open water
# removed), with the largely unforested Arctic Cordillera, Northern Arctic and
# Southern Arctic ecozones already removed to keep the repository small. It has
# 18 polygons with some misspelled names; this script re-applies the same
# exclusion (so a full, untrimmed source also works), dissolves the rest to one
# feature per ECOZONE and attaches the canonical codes/names below.

library(sf)

source_gpkg <- "data/geospatial/ecozones/source/Canada_Ecozones_forested.gpkg"
out_dir <- "data/geospatial/ecozones"
excluded_ecozones <- c(1L, 2L, 3L) # Arctic Cordillera, Northern Arctic, Southern Arctic
simplify_tolerance_m <- 1500 # metres, in EPSG:3978 (Canada Atlas Lambert)
slivers_pct_of_province <- 0.01
slivers_min_km2 <- 5000

# Canonical ecozone codes and English/French names, keyed on ECOZONE (1-15);
# the excluded ecozones are removed from this table below.
ecozone_lookup <- data.frame(
  ecozone = 1:15,
  ecozone_code = c(
    "arctic_cordillera", "northern_arctic", "southern_arctic", "taiga_plains",
    "taiga_shield", "boreal_shield", "atlantic_maritime", "mixedwood_plains",
    "boreal_plains", "prairies", "taiga_cordillera", "boreal_cordillera",
    "pacific_maritime", "montane_cordillera", "hudson_plains"
  ),
  name_en = c(
    "Arctic Cordillera", "Northern Arctic", "Southern Arctic", "Taiga Plains",
    "Taiga Shield", "Boreal Shield", "Atlantic Maritime", "Mixedwood Plains",
    "Boreal Plains", "Prairies", "Taiga Cordillera", "Boreal Cordillera",
    "Pacific Maritime", "Montane Cordillera", "Hudson Plains"
  ),
  name_fr = c(
    "Cordill\u00e8re arctique", "Haut-Arctique", "Bas-Arctique",
    "Ta\u00efga des plaines", "Ta\u00efga du Bouclier", "Bouclier bor\u00e9al",
    "Maritime de l'Atlantique", "Plaines \u00e0 for\u00eats mixtes",
    "Plaines bor\u00e9ales", "Prairies", "Ta\u00efga de la Cordill\u00e8re",
    "Cordill\u00e8re bor\u00e9ale", "Maritime du Pacifique",
    "Cordill\u00e8re montagnarde", "Plaines hudsonniennes"
  ),
  stringsAsFactors = FALSE
)

ecozone_lookup <- ecozone_lookup[!ecozone_lookup$ecozone %in% excluded_ecozones, ]

# --- Drop excluded ecozones, dissolve the rest to one feature each ----------

raw <- st_read(source_gpkg, quiet = TRUE)
raw$ecozone <- as.integer(raw$ECOZONE)
raw <- raw[!raw$ecozone %in% excluded_ecozones, ]
codes <- sort(unique(raw$ecozone))
dissolved_geoms <- lapply(codes, function(z) st_union(st_geometry(raw)[raw$ecozone == z]))
ecozones_full <- st_sf(
  ecozone = codes,
  geometry = do.call(c, dissolved_geoms),
  crs = st_crs(raw)
)
ecozones_full <- merge(ecozones_full, ecozone_lookup, by = "ecozone", sort = FALSE)
ecozones_full <- ecozones_full[order(ecozones_full$ecozone), ]

if (!setequal(ecozones_full$ecozone, ecozone_lookup$ecozone)) {
  stop("Expected ECOZONE values ", paste(ecozone_lookup$ecozone, collapse = ", "),
       " in the source data; got: ",
       paste(sort(ecozones_full$ecozone), collapse = ", "))
}

# --- Simplify for the map, in an equal-area projected CRS -------------------

ecozones_full_3978 <- st_transform(ecozones_full, 3978)
ecozones_simplified <- st_simplify(
  ecozones_full_3978,
  preserveTopology = TRUE,
  dTolerance = simplify_tolerance_m
)
ecozones_simplified <- st_make_valid(ecozones_simplified)
ecozones_simplified <- st_transform(ecozones_simplified, 4326)
ecozones_simplified <- ecozones_simplified[, c("ecozone", "ecozone_code", "name_en", "name_fr")]

vertex_count <- sum(vapply(
  st_geometry(ecozones_simplified),
  function(g) nrow(st_coordinates(g)),
  integer(1)
))

gpkg_path <- file.path(out_dir, "ecozones.gpkg")
st_write(
  ecozones_simplified, gpkg_path,
  layer = "ecozones", delete_dsn = TRUE, quiet = TRUE
)
gpkg_size_kb <- file.size(gpkg_path) / 1024

cat(sprintf(
  "ecozones.gpkg: simplify tolerance = %dm, %d vertices, %.1f KB, all valid: %s\n",
  simplify_tolerance_m, vertex_count, gpkg_size_kb, all(st_is_valid(ecozones_simplified))
))

# --- Province x ecozone lookup (unsimplified ecozones, dropping slivers) ---

canada <- st_read("data/geospatial/canada/ca.shp", quiet = TRUE)
canada$jurisdiction_code <- substring(canada$id, 3L)
canada_3978 <- st_make_valid(st_transform(canada, 3978))
ecozones_full_3978 <- st_make_valid(ecozones_full_3978)

province_area_km2 <- stats::setNames(
  as.numeric(st_area(canada_3978)) / 1e6, canada_3978$jurisdiction_code
)

inter <- suppressWarnings(st_intersection(
  canada_3978[, "jurisdiction_code"], ecozones_full_3978[, c("ecozone_code")]
))
inter$area_km2 <- as.numeric(st_area(inter)) / 1e6
pairs <- stats::aggregate(
  area_km2 ~ jurisdiction_code + ecozone_code,
  data = sf::st_drop_geometry(inter), FUN = sum
)
pairs$province_area_km2 <- province_area_km2[pairs$jurisdiction_code]
pairs$pct_of_province <- pairs$area_km2 / pairs$province_area_km2 * 100
pairs$keep <- pairs$area_km2 >= pairs$province_area_km2 * slivers_pct_of_province |
  pairs$area_km2 >= slivers_min_km2

# Report pairs close to the sliver threshold on either side, for the record.
near_threshold <- pairs[
  abs(pairs$pct_of_province - slivers_pct_of_province * 100) < 2 |
    abs(pairs$area_km2 - slivers_min_km2) < 500,
]
if (nrow(near_threshold) > 0L) {
  cat("Pairs near the sliver threshold (1% of province area or 5,000 km2):\n")
  for (i in seq_len(nrow(near_threshold))) {
    r <- near_threshold[i, ]
    cat(sprintf(
      "  %s x %s: %.0f km2 (%.2f%% of province), kept=%s\n",
      r$jurisdiction_code, r$ecozone_code, r$area_km2, r$pct_of_province, r$keep
    ))
  }
}

kept <- pairs[pairs$keep, c("jurisdiction_code", "ecozone_code", "area_km2")]
kept$overlap_km2 <- round(kept$area_km2)
kept <- kept[order(kept$jurisdiction_code, kept$ecozone_code), c("jurisdiction_code", "ecozone_code", "overlap_km2")]

lookup_path <- file.path(out_dir, "province_ecozones.csv")
readr::write_csv(kept, lookup_path, na = "")

cat(sprintf(
  "province_ecozones.csv: %d of %d candidate pairs kept (dropped %d slivers)\n",
  nrow(kept), nrow(pairs), nrow(pairs) - nrow(kept)
))
