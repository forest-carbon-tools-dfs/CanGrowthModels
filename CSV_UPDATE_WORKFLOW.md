# CSV Update Workflow

Use this guide after editing CSV files in `C:/CanGrowthModels/data`.

## 1. Open the Project

Open `CanGrowthModels.Rproj` in RStudio. Work from the project root, not
the `data` or `R` folder. In the R console, check:

```r
getwd()
```

The result should be `C:/CanGrowthModels`. If necessary:

```r
setwd("C:/CanGrowthModels")
```

## 2. Edit and Save the Source CSV

| File | What to edit |
| --- | --- |
| `data/models.csv` | One summary row per model, with a unique, stable `model_id`. |
| `data/model_coverage.csv` | Geographic coverage claims; multiple rows per model are allowed. |
| `data/model_links.csv` | Website, software, publication, and other resource links. |
| `data/model_sources.csv` | Associations between models and local Markdown document filenames. |

- Save as CSV, preferably UTF-8. Close any spreadsheet save prompts before rendering.
- Preserve headers exactly, including underscores; do not add leading or trailing spaces.
- In a text editor, quote cells containing commas or line breaks. Spreadsheet software normally handles this when saving as CSV.
- Use semicolons for multi-value fields where the schema calls for them.
- Use documented facts and retain their source references. Do not invent values just to pass validation.
- Edit files under `data/`, not `derived/` or `_site/`; those folders are generated.

### Adding a Model

1. Add one row to `data/models.csv`, using `data/models_template.csv` for the headers and `data/models_schema_definition.csv` for field definitions.
2. Choose a unique, stable `model_id`, such as `new_model`. Fill required fields and use the documented controlled values.
3. Add coverage claims to `data/model_coverage.csv` only where supported. Give each claim a unique `coverage_id` and the same `model_id` as the summary row.
4. Add known resource links to `data/model_links.csv`, each with a unique `link_id` and the same `model_id`. Do not add a link row if no URL is known.
5. Optionally associate local documents through `data/model_sources.csv`. Use a Markdown filename without a directory path; do not add a placeholder document association.
6. Leave new claims and links `unverified` until reviewed. A document association alone does not verify a claim.

If changing or deleting a `model_id`, update all referring rows in coverage,
links, and source associations too.

### Using Placeholders

`unknown` is not valid in every field. These rules apply to the current validators:

| Field | What to use when information is incomplete |
| --- | --- |
| `verification_status` | `unverified`, not `unknown`. |
| `management_context` | `unknown`; other allowed values are `unmanaged`, `managed`, and `unmanaged_managed`. |
| Coverage `source_reference` | `unknown` is accepted as a temporary placeholder. Replace it with a real reference later. |
| Link `title` | `unknown` passes validation, but a descriptive title is preferable. |
| Link `url` | A real HTTP(S) URL is required; neither `unknown` nor `unverified` is valid. |
| Link `link_type` | Use `official_website`, `manual`, `software`, `source_code`, `publication`, or `other`. |
| Coverage `jurisdiction_code` | A province/territory code or `unknown`. |
| Coverage `coverage_basis` | `calibrated_for`, `intended_for`, or `validated_in`; separate multiple values with semicolons. No `unknown` option. |
| IDs and document associations | Use real, unique IDs and valid filenames, not placeholders. |

Optional undocumented fields may remain blank. A successful validation is not
proof that a claim is accurate or verified.

## 3. Render the Website

For ordinary row edits or additions, you do **not** need to run the R scripts
separately. In the **RStudio Terminal** (not the R console), run:

```powershell
quarto render
```

### Updating or Previewing the Map

The map's R code is embedded in `map.qmd`; there is no separate map-update R
script to source. Open `CanGrowthModels.Rproj` in RStudio, edit the code chunk
in `map.qmd`, then use its **Render** button. For a focused render, run this in
the **RStudio Terminal** from the project root:

```powershell
quarto render map.qmd
```

To rebuild and render the entire site, use `quarto render`. Both commands run
the project pre-render validators and data build, so the map uses the latest
`data/model_coverage.csv`. The map requires the `sf` and `leaflet` R packages
in the R library used by Quarto.

The project configuration in `_quarto.yml` automatically runs this sequence:

1. `R/validate_CanGYmodels.R` checks model summaries.
2. `R/validate_model_coverage.R` checks coverage claims.
3. `R/validate_model_links.R` checks resource links.
4. `R/validate_model_sources.R` checks document associations.
5. `R/build_CanGYmodel_data.R` regenerates the website CSVs in `derived/`.
6. Quarto renders `index.qmd`, `models.qmd`, and `map.qmd` into `_site/`.

If a step fails, rendering stops. Fix the reported issue in the source files,
save, and run `quarto render` again. Later errors may only appear after the
first one is fixed.

### Optional: Check the Data in the R Console First

Use this when you want validation results without rendering the website.
Run the block from the project root; the loop stops at the first error:

```r
scripts <- c(
  "R/validate_CanGYmodels.R",
  "R/validate_model_coverage.R",
  "R/validate_model_links.R",
  "R/validate_model_sources.R"
)

for (script in scripts) {
  source(script)
}
```

After the checks pass, run `quarto render` in the RStudio Terminal. It repeats
the checks and rebuilds the website data automatically. Running only the
data-build script is not a substitute for validation.

## 4. Review the Result

After a successful render, open `_site/index.html` in a browser, then visit
the Models and Coverage map pages. Check the edited model details, coverage,
links, and filters. On the map, click Alberta and confirm its listed claims.
Reload the page after subsequent renders to avoid viewing an old copy.

## Renaming or Adding a Column

A header change is a code/schema change, not just a CSV edit. Changing only
the CSV header can cause a missing-column error or leave the website showing
an empty value.

1. Rename or add the column in the source CSV, with no extra whitespace.
2. Update its definition in `data/models_schema_definition.csv` and its header in `data/models_template.csv` when changing a model-summary field.
3. In VS Code, use Find in Files scoped to `C:/CanGrowthModels` to locate the old name. Update relevant validators, rendering code in `models.qmd`, tests, and documentation. Update controlled-value checks if the allowed categories changed too.
4. If the column drives a filter, update the corresponding HTML label, data attribute, and JavaScript references together.
5. Run validation, then render and inspect the affected display/filter. Do not manually edit generated files to apply the rename.

For example, the rename from `stand_origin` to `management_context` required
updates to the model validator, schema, template, catalogue display/filter,
and pipeline documentation.

## If R or Quarto Cannot Be Found

The Terminal command needs both `Rscript` and `quarto` on its PATH. If either
is unavailable, try RStudio's Render button with `map.qmd` or `models.qmd` open
for a page preview. Resolve the Terminal PATH before using the full-project
command above. An R package/DLL loading error is an environment problem,
not a reason to change CSV values; use the R version compatible with your
installed packages. This workflow was successfully rendered with R 4.5.3.

## Save to Git After Review

Review the diff and commit only the intended source CSV, code, and documentation
changes. Do not commit `derived/`, `_site/`, credentials, or local manuals.
Push when ready. A local render does not publish the website or push to GitHub.

For fuller definitions and validation limitations, see
[Data model and pipeline](docs/data-model-and-pipeline.md).