# Canadian Forest Growth & Yield Model Registry

[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental) [![License: GPL-3.0-only](https://img.shields.io/badge/license-GPL--3.0--only-blue.svg)](LICENSE) [![Version: 0.1.0](https://img.shields.io/badge/version-0.1.0-blue.svg)](#citation)

A registry of forest growth and yield models developed for or applicable to Canadian forests. Entries are brief pointers to each model's website, downloads, and publications; consult those sources for current details.

[**Find a model (filterable catalogue)**](https://forest-carbon-tools-dfs.github.io/CanGrowthModels/models.html) \| [**View the map**](https://forest-carbon-tools-dfs.github.io/CanGrowthModels/map.html)

## Start here

- **Registry data:** browse the [source tables](data/).
- **Edit the registry:** follow [CONTRIBUTING.md](CONTRIBUTING.md) for CSV edits, checks, and pull requests.
- **Understand the data and pipeline:** see the [technical guide](docs/pipeline-and-workflow.md).
- **Track remaining work:** see the [project plan](docs/PROJECT_PLAN.md).

## Contributing

The registry is maintained by the growth and yield modelling team within NRCan. Suggestions are welcome from anyone with knowledge of Canadian forest growth models. Every change requires maintainer review.

**Form access:** anyone with a GitHub account can submit a suggestion using these forms.

| I want to... | Form |
|------------------------------------|------------------------------------|
| Add a model | [Propose a new model](https://github.com/forest-carbon-tools-dfs/CanGrowthModels/issues/new?template=new-model.yml) |
| Correct or add information about a model | [Suggest a change to an existing model](https://github.com/forest-carbon-tools-dfs/CanGrowthModels/issues/new?template=update-model.yml) |
| Propose another registry field | [Suggest a new field](https://github.com/forest-carbon-tools-dfs/CanGrowthModels/issues/new?template=new-field.yml) |

Use public information and include a supporting URL. The forms guide you through what to provide; no CSV editing or local checks are needed.

**No GitHub account?** Email [derek.sattler\@nrcan-rncan.gc.ca](mailto:derek.sattler@nrcan-rncan.gc.ca) with the model name, your suggestion, and supporting public links. Prospective collaborators can also use this contact to request write access.

## About the data

- Provinces and territories are the map's unit; a model shown for a province may apply only to part of it.
- Species lists may be partial, so a missing search match does not mean a species is excluded.
- Open-source status and licensing are not recorded; see each model's own pages.

## Copyright and License

Copyright (C) 2026 His Majesty the King in Right of Canada, as represented by the Minister of Natural Resources.

The project software and the registry data in `data/` are licensed under the GNU General Public License, version 3 only (`GPL-3.0-only`); see [LICENSE](LICENSE). Bundled third-party geospatial data keeps its own licence (see [license_gis.txt](data/geospatial/canada/license_gis.txt)). Referenced models and other third-party materials keep their own copyrights and licences; this licence does not grant rights to them. The software and data are provided without warranty.

## Citation {#citation}

Sattler, D (2026). CanGrowthModels: A registry to explore forest growth and yield models in Canada. Registry software (version 0.1.0). <https://github.com/forest-carbon-tools-dfs/CanGrowthModels>.
