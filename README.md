# Canadian Forest Growth & Yield Model Registry

A curated registry of forest growth and yield models developed for or applicable to Canadian forests. The project is private-first; any public release requires an explicit decision by the maintainers.

## Project Rules

- Record model claims only from public or otherwise approved sources. Preserve citations and verification details with each record, following the schema.
- Do not guess model status, species coverage, geographic applicability, or other facts. Use the schema's documented unknown or unverified values where evidence is incomplete.
- Do not commit credentials, access tokens, private source material, or local processing artifacts. Use environment variables for any future integrations that require credentials.
- Treat `GYmodelPDFmanuals/` and `GYmodels_manual_md/` as local-only source material (git-ignored). Do not copy or commit their contents; AI scanning is limited to Markdown files you explicitly choose.
- Keep exactly one row per model in `data/models.csv`, identified by a unique,
  stable `model_id`. Retain source citations and qualifications in that row;
  associate additional local documents through `data/model_sources.csv`.
- Record individual contributors in `developers` and supporting organizations
  in `organization`. Leave undocumented values blank rather than inferring
  developers from publication authors or organizations from publishers.
- Version families may share one model card; keep version-specific capabilities
  and links explicitly labelled rather than applying one version's claims to all.
- Keep preliminary document-to-model associations in `data/model_sources.csv`.
  An association alone does not establish which claims a document supports.
- Keep source data and source code under version control. Treat Quarto output and files under `derived/` as generated artifacts.
- Review changes to registry records for source quality, accuracy, and licensing before accepting them.

## Project Layout

- `data/models_schema_definition.csv`: field definitions and current data rules.
- `data/models_template.csv`: header template for registry records.
- `data/models.csv`, `data/model_coverage.csv`, `data/model_links.csv`: pilot
  model summaries, separate geographic claims, and typed model links. Multiple
  link rows per model allow separate website/download and related-publication
  lists without embedding several URLs in one CSV cell.
- `data/model_sources.csv`: maintainer-supplied Markdown filename associations.
  Documents remain local-only; this mapping does not populate `source_file`
  in provisional model rows or assert that a document verifies those rows.
- [Data model and pipeline](docs/data-model-and-pipeline.md): table relationships,
  column definitions, validation coverage, and the publishing workflow.
- `R/`: validation, data-build, and coverage utilities. Run these from the project root because their paths are project-root-relative.
- `tests/`: automated checks for the data contract and validation behavior.
- `_quarto.yml`, `index.qmd`, `models.qmd`: the static Quarto catalogue.
  Only these two pages are rendered; local manual Markdown is excluded.
- `derived/`: generated website-ready data; do not edit or commit generated output.

`CanGrowthModelsWikiPage.csv` is a retired, git-ignored seed file, not a pipeline
input. Previously imported information retains its original Wikipedia provenance
and review status without depending on that local CSV.

## Local Checks

With R (including `readr`, `dplyr`, `htmltools`, and `rlang`) and Quarto installed,
run from the project root with `Rscript` and `quarto` on your PATH:

```powershell
Rscript R/validate_CanGYmodels.R
Rscript R/validate_model_coverage.R
Rscript R/validate_model_links.R
Rscript R/validate_model_sources.R
Rscript R/build_CanGYmodel_data.R
quarto render
```

Quarto automatically runs the four validators and the data build before
rendering. The catalogue filters in the browser without a server; a
province match may represent only a subregion, as qualified on the model
card. A calibration claim can also describe a testing-only variant and does
not by itself mean the model is recommended for planning or decisions.
Programming language and open-source status are not yet part of the
schema; related details may appear in source-record notes, but code access
alone does not establish an open-source licence. Model details show developers,
supporting organizations, species, minimum inputs, outputs, and silvicultural interventions;
coverage claims retain coastal/interior
qualifiers where supplied. Some species lists are explicitly partial, so
a missing search match does not establish that a model excludes a species.
There is no map or public deployment.
Validation still covers only part of the schema; complete rules and
automated tests remain for the data-contract stage.