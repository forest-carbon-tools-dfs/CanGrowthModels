# Contributing

Thank you for helping improve the Canadian Forest Growth & Yield Model Registry.
The registry is a brief, general **pointer** to models and where to learn more;
it is not the authoritative source, so entries stay short and link to each
model's own website and repositories.

All contributions are reviewed by a maintainer before anything changes.

## Adding a model or correcting information

The steps are in the README, so there is one place to keep up to date:

- [How to add a model](README.md#how-to-add-a-model)
- [How to correct existing registry information](README.md#how-to-correct-existing-registry-information)

In short: **everyone** can use the
[issue forms](https://github.com/forest-carbon-tools-dfs/CanGrowthModels/issues/new/choose)
(*Propose a new model*, *Suggest a change to an existing model*, *Suggest a new
field*) and give a public URL that supports the suggestion. People with write or
fork access can instead edit the CSV files in `data/` on a branch, run the checks
and open a pull request. The table relationships and the detailed workflow are
in [docs/pipeline-and-workflow.md](docs/pipeline-and-workflow.md).

## Ground rules

- Use public information only and keep entries brief and general.
- Do not guess; leave a field blank or `unknown` where the guide allows.
- `model_coverage.jurisdiction_code` holds Canadian provinces and
  territories only; use `region_detail` for sub-regions, ecosystems, or US
  states.
- Do not commit credentials, source manuals, or generated site output.
- Contributions are accepted under the GPL-3.0-only licence of this project and its data registry.
