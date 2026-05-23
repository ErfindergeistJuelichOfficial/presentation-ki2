# KI-Workshop 2

## Tools

- <https://quarto.org/>

## Lokal Development

<https://quarto.org/docs/get-started/>

- install quarto for ur OS
- install extension for ur Code Editor
- vs code installed python from astral.sh (uv.exe) for me

```shell
quarto install tinytex
quarto preview ki2.qmd --cache-refresh
```

alternate:

```shell
quarto preview ki2.qmd --no-cache
```

## PDFs lokal generieren

```shell
# Präsentation als PDF
quarto render ki2.qmd --to pdf

# Handout als PDF
quarto render handout.qmd --to pdf
```

## Documentation Presentation

- <https://quarto.org/docs/presentations/revealjs/>
- DEMO: https://github.com/quarto-dev/quarto-web/blob/main/docs/presentations/revealjs/demo/index.qmd
- DEMO: https://quarto.org/docs/presentations/revealjs/demo

## Author

<https://erfindergeist.org>
