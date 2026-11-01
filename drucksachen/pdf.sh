#!/bin/sh
# Erzeugt aus drucksachen/plakat.html und rueckseite.html (randlos):
#   plakat-a3.pdf, plakat-a4.pdf, plakat-a5.pdf  — Plakat in drei Größen
#   flyer-a5.pdf                                 — Flyer: Seite 1 Plakat A5, Seite 2 Rückseite
# Benötigt Google Chrome oder Chromium und pdfunite (Paket poppler-utils).
set -e
cd "$(dirname "$0")"
BROWSER=$(command -v google-chrome || command -v chromium || command -v chromium-browser)
[ -z "$BROWSER" ] && { echo "Chrome/Chromium nicht gefunden"; exit 1; }

print_pdf() {  # $1 = Ziel-PDF, $2 = Datei mit Query
  "$BROWSER" --headless=new --disable-gpu --no-sandbox \
    --no-pdf-header-footer --virtual-time-budget=8000 \
    --print-to-pdf="$PWD/$1" "file://$PWD/$2"
  echo "PDF erstellt: drucksachen/$1"
}

for FORMAT in a3 a4 a5; do
  QUERY=""
  [ "$FORMAT" != a3 ] && QUERY="?$FORMAT"
  print_pdf "plakat-$FORMAT.pdf" "plakat.html$QUERY"
done

print_pdf rueckseite-a5.pdf rueckseite.html
pdfunite plakat-a5.pdf rueckseite-a5.pdf flyer-a5.pdf
rm rueckseite-a5.pdf
echo "PDF erstellt: drucksachen/flyer-a5.pdf"
