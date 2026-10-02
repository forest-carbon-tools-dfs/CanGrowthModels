# Canadian Forest Growth & Yield Model Registry

A curated registry of forest growth and yield models developed for or applicable to Canadian forests. The project is private-first; any public release requires an explicit decision by the maintainers.

## Project Rules

- Record model claims only from public or otherwise approved sources. Preserve citations and verification details with each record, following the schema.
- Do not guess model status, species coverage, geographic applicability, or other facts. Use the schema's documented unknown or unverified values where evidence is incomplete.
- Do not commit credentials, access tokens, private source material, or local processing artifacts. Use environment variables for any future integrations that require credentials.
- Treat `GYmodelPDFmanuals/` and `GYmodels_manual_md/` as local-only source material (git-ignored). Do not copy or commit their contents; AI scanning is limited to Markdown files you explicitly choose.
- Create one registry row per scanned source file; `model_id` repeats across rows for the same model and rows are consolidated and cross-checked later.
- Keep source data and source code under version control. Treat Quarto output and files under `derived/` as generated artifacts.
- Review changes to registry records for source quality, accuracy, and licensing before accepting them.

## Project Layout

- `data/models_schema_definition.csv`: field definitions and current data rules.
- `data/models_template.csv`: header template for registry records.
- `data/models.csv`: intended canonical registry dataset; it will be established during the starter-dataset stage.
- `R/`: validation, data-build, and coverage utilities. Run these from the project root because their paths are project-root-relative.
- `tests/`: automated checks for the data contract and validation behavior.
- `_quarto.yml`, `index.qmd`, `models.qmd`: Quarto site configuration and source pages.
- `derived/`: generated website-ready data; do not edit or commit generated output.

## Local Checks

After `data/models.csv` has been created, run the scripts from the project root:

```powershell
Rscript R/validate_CanGYmodels.R
Rscript R/build_CanGYmodel_data.R
```

The current validator covers only part of the schema. Complete validation rules and automated tests will be added with the data-contract stage. Site rendering and publishing instructions will be added in their respective stages.