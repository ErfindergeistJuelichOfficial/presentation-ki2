# KI-Workshop 2

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
- Ausgabe: `images/qr/<name>.png` (2000 × 2000 px, Fehlerkorrektur H)
- Container-Definition: `compose.yaml`

## Plakat (A3)

Das Werbeplakat liegt als HTML in `plakat/plakat.html` (alle Maße in mm, A3 randlos) und wird mit Chrome/Chromium als PDF exportiert:

```shell
./plakat/pdf.sh        # → plakat/plakat-a3.pdf
```

Zum Anpassen `plakat/plakat.html` im Browser öffnen und Texte/Farben direkt in der Datei ändern (Farben als CSS-Variablen oben im `<style>`).

Die GitHub-Pipeline erzeugt das PDF bei jedem Push automatisch und veröffentlicht es unter
<https://presentations.erfindergeist.org/ki2/plakat/plakat-a3.pdf>. Das lokal erzeugte PDF ist in `.gitignore`.

Schrift: Inter (SIL OFL 1.1) liegt lokal in `plakat/fonts/` — dadurch sieht das PDF lokal und in der Pipeline gleich aus.

## Documentation Presentation

- <https://quarto.org/docs/presentations/revealjs/>
- DEMO: https://github.com/quarto-dev/quarto-web/blob/main/docs/presentations/revealjs/demo/index.qmd
- DEMO: https://quarto.org/docs/presentations/revealjs/demo

## Author

<https://erfindergeist.org>
