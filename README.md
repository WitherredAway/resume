# resume

My curriculum vitae, written in [Typst](https://typst.app/).

- `main.typ` — the content
- `template.typ` — the layout
- `main.pdf` — the compiled output
- `stats.json` — commit, pull request, star and download counts pulled from the GitHub API
- `stats.py` — regenerates `stats.json`

## Build

```sh
typst compile --font-path fonts main.typ
```

Watch and rebuild on every save:

```sh
typst watch --font-path fonts main.typ
```

Regenerate the previews below:

```sh
typst compile --font-path fonts --format png --ppi 150 main.typ "preview-{n}.png"
```

## Stats

Every figure in the resume lives in `stats.json` rather than in the prose, in two halves:

- `github` — commit, pull request, star and download counts, regenerated from the API:

  ```sh
  GITHUB_TOKEN=... python3 stats.py
  ```

- `manual` — the numbers no API can answer (Pokétwo's servers and trainers, the anticheat's metrics,
  community size, years of programming). Edit these by hand; `stats.py` never touches them.

A weekly [workflow](.github/workflows/build.yml) reruns it, recompiles and commits the result.
Reading the private Pokétwo repositories needs a `STATS_TOKEN` secret with `repo` scope; without it
those counts keep their last known values.

The same workflow recompiles and commits `main.pdf` and `preview-1.png` whenever the source changes
on `main`, so editing a `.typ` file is enough — no need to build and commit the output by hand.

![Resume](./preview-1.png)
