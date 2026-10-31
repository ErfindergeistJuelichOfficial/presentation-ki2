# KI-Workshop 2

## Beispiele

Alle Beispiele aus dem Workshop — Bilder, OpenSCAD-Dateien, Prompts und Demos — liegen sortiert unter [`beispiele/`](beispiele/), z.B. [Hexenturm](beispiele/hexenturm/), [Tischfuß](beispiele/tischfuss/), [Muttkrat](beispiele/muttkrat/).

## Tools

- <https://quarto.org/>

## Lokal Development

<https://quarto.org/docs/get-started/>

- install quarto for ur OS
  - Fedora: use the tarball installion docu
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
```

## QR-Codes erzeugen

QR-Codes für alle wichtigen Links werden mit [node-qrcode](https://www.npmjs.com/package/qrcode) in einem Podman-Container erzeugt — eine lokale Node-Installation ist nicht nötig.

```shell
podman compose run --rm qrcode
```

- Links stehen in `qrcodes.sh` (Liste am Ende: `<name> <url ohne https://>`)
- Ausgabe: `qr-codes/<name>.png` (2000 × 2000 px, Fehlerkorrektur H)
- Container-Definition: `compose.yaml`

## Plakat (A3)

Werbeplakat als HTML mit PDF-Export: Anleitung in [`plakat/README.md`](plakat/README.md).

```shell
./plakat/pdf.sh        # → plakat/plakat-a3.pdf
```

## Documentation Presentation

- <https://quarto.org/docs/presentations/revealjs/>
- DEMO: https://github.com/quarto-dev/quarto-web/blob/main/docs/presentations/revealjs/demo/index.qmd
- DEMO: https://quarto.org/docs/presentations/revealjs/demo

## Author

<https://erfindergeist.org>
