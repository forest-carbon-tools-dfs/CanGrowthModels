# Canadian Forest Growth & Yield Model Registry

[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![License: GPL-3.0-only](https://img.shields.io/badge/license-GPL--3.0--only-blue.svg)](LICENSE)
[![Version: 0.1.0](https://img.shields.io/badge/version-0.1.0-blue.svg)](#citation)

A registry of forest growth and yield models developed for or applicable to Canadian forests. Each model has a brief summary and links to its website, downloads, publications (if available), so you can find current details at the source. The registry is updated periodically; check back for new models and tools.

Contact: [derek.sattler@nrcan-rncan.gc.ca](mailto:derek.sattler@nrcan-rncan.gc.ca)

## Contributing

Every suggestion is reviewed by a maintainer before the registry changes.

**Ground rules**

- Use **public information only**, and give the public URL that supports it.
- Don't guess. Leave a field blank, or `unknown` where the schema allows it.
- Keep entries brief and general; link to the model's own pages for detail.

### What to provide

Fill in what you can find on the model's own public pages. Only the first two rows are essential; leave the rest blank if you don't know.

| Field | What to enter | Example |
| --- | --- | --- |
| Model name | The model's name or acronym. | `VDYP7` |
| Web address(es) | The model's home page, and where to download it, its source code, manual or paper. | `https://mgm.ualberta.ca/` |
| Provinces/territories | Where the model is used or applies. | `AB; BC` |
| Availability | How the model itself can be obtained: `public_download`, `on_request`, `restricted`, `not_available` or `unknown`. | `public_download` |
| Developers / organization | Who built it, and who supported it. | `BC Ministry of Forests` |
| Model type | `whole_stand`, `individual_tree`, `distance_dependent`, `distance_independent`, `diameter_class`, `hybrid`, `other` or `unknown`. | `whole_stand` |
| Interface | How it is run: `r_package`, `python_package`, `desktop_application`, `web_application`, `command_line`, `spreadsheet`, `capsis`, `other` or `unknown`. | `r_package` |
| Outputs | `merchantable_volume`, `total_volume`, `basal_area`, `biomass`, `log_volume`, `economics` or `other`. Only if the source says which. | `basal_area` |
| Species | Species or species groups covered. | `black spruce; jack pine` |
| Programming language | If stated. | `Fortran` |
| Supporting source | The public page that shows the above. | link |

Separate several values with `;`. Every allowed value is defined in `data/*_schema_definition.csv`.

### How to add a model

**Anyone:** fill in the [**Propose a new model**](https://github.com/forest-carbon-tools-dfs/CanGrowthModels/issues/new?template=new-model.yml) form (or see all forms: [choose a template](https://github.com/forest-carbon-tools-dfs/CanGrowthModels/issues/new/choose)).

**Collaborators** (write or fork access): on a branch, add rows to three files in `data/`.

| File | Add |
| --- | --- |
| `models.csv` | One row with a unique `model_id`. Set `last_reviewed` to today. |
| `model_coverage.csv` | One row per province/territory (`coverage_id` = `<model_id>_<code>`). |
| `model_links.csv` | One row per link (`link_id` = `<model_id>_<short_slug>`). Choose a `link_type` from the list in `model_links_schema_definition.csv` (for example `official_website`, `model_download`, `publication`). Set `accessed_date` to today. Give every model at least one link. |

Allowed values are listed in `data/*_schema_definition.csv`. Then [run the checks](#run-the-checks-collaborators-and-maintainers) and open a pull request that names your public source.

### How to correct existing registry information

**Anyone:** fill in the [**Suggest a change to an existing model**](https://github.com/forest-carbon-tools-dfs/CanGrowthModels/issues/new?template=update-model.yml) form. Name the model, say what should change, and give the public source.

**Collaborators:** on a branch, edit the cell or row in `data/models.csv`, `model_coverage.csv` or `model_links.csv`. Set `last_reviewed` (or the link's `accessed_date`) to today, [run the checks](#run-the-checks-collaborators-and-maintainers), and open a pull request that names your public source.

More detail: [registry guide](docs/pipeline-and-workflow.md) and [CONTRIBUTING.md](CONTRIBUTING.md).

## Run the checks (collaborators and maintainers)

Only people editing the CSV files need this; if you use an issue form, skip it. From the project root, with R installed:

```powershell
Rscript scripts/validate_registry.R
Rscript tests/testthat.R
```

Both must pass. The validator checks structure and allowed values; it cannot tell whether an entry is accurate or current. To build the catalogue and map, install Quarto and run `quarto render` (there is no public deployment yet).

## What is where

| Path | Contents |
| --- | --- |
| `data/` | The registry: `models.csv`, `model_coverage.csv`, `model_links.csv`, and a `*_schema_definition.csv` for each (the allowed values the validator reads). |
| `docs/` | [Registry guide](docs/pipeline-and-workflow.md) (columns, pipeline, workflow) and [project plan](docs/PROJECT_PLAN.md). |
| `R/`, `scripts/`, `tests/` | Validation code, entry-point scripts and tests. |
| `*.qmd`, `_quarto.yml` | The Quarto catalogue and map. |
| `.github/` | Issue forms, the pull request checklist and CI. |
| `data/geospatial/` | Map boundaries (Canada, ecozones) and their licence notices. |

## About the data

- Provinces and territories are the map's unit; a model shown for a province may apply only to part of it.
- Species lists may be partial, so a missing search match does not mean a species is excluded.
- Open-source status and licensing are not recorded; see each model's own pages.

## Copyright and License

Copyright (C) 2026 His Majesty the King in Right of Canada, as represented by the Minister of Natural Resources.

The project software and the registry data in `data/` are licensed under the GNU General Public License, version 3 only (`GPL-3.0-only`); see [LICENSE](LICENSE). Bundled third-party geospatial data keeps its own licence (see [license_gis.txt](data/geospatial/canada/license_gis.txt)). Referenced models and other third-party materials keep their own copyrights and licences; this licence does not grant rights to them. The software and data are provided without warranty.

## Citation

Sattler, D (2026). CanGrowthModels: A registry to explore forest growth and yield models in Canada. Registry software (version 0.1.0). <https://github.com/forest-carbon-tools-dfs/CanGrowthModels>.
