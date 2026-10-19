# Contributing

Thank you for helping improve the Canadian Forest Growth & Yield Model Registry.
The registry is a brief, general **pointer** to models and where to learn more;
it is not the authoritative source, so entries stay short and link to each
model's own website and repositories.

All contributions are reviewed by a maintainer before anything changes.

## I want to propose something (public users)

Open an issue and choose a form:

- **Propose a new model**
- **Suggest a change to an existing model**
- **Suggest a new field**

Please give a public URL that supports your suggestion. Do not paste private or
restricted material. A maintainer will check it, update the data, and close the
issue.

## I have write or fork access (collaborators)

Edit the CSV files in `data/` on a branch or fork, run the checks, and open a
pull request:

```powershell
Rscript scripts/validate_registry.R
Rscript tests/testthat.R
```

Step-by-step instructions for adding a model, changing values, and adding a
field are in [docs/pipeline-and-workflow.md](docs/pipeline-and-workflow.md).

## Ground rules

- Use public information only and keep entries brief and general.
- Do not guess; leave a field blank or `unknown` where the guide allows.
- `jurisdictions` and `jurisdiction_code` hold Canadian provinces and
  territories only; use `region_detail` for sub-regions, ecosystems, or US
  states.
- Do not commit credentials, source manuals, or generated site output.
- Data licensing for contributions has not yet been finalized; see the guide.
