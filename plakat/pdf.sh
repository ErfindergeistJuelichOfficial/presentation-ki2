#!/bin/sh
# Erzeugt plakat/plakat-a3.pdf, plakat-a4.pdf und plakat-a5x2.pdf (2× A5 auf A4 quer) aus plakat/plakat.html (randlos).
# Benötigt Google Chrome oder Chromium.
set -e
cd "$(dirname "$0")"
BROWSER=$(command -v google-chrome || command -v chromium || command -v chromium-browser)
[ -z "$BROWSER" ] && { echo "Chrome/Chromium nicht gefunden"; exit 1; }
for FORMAT in a3 a4 a5x2; do
  QUERY=""
  [ "$FORMAT" != a3 ] && QUERY="?$FORMAT"
  "$BROWSER" --headless=new --disable-gpu --no-sandbox \
    --no-pdf-header-footer --virtual-time-budget=8000 \
    --print-to-pdf="$PWD/plakat-$FORMAT.pdf" "file://$PWD/plakat.html$QUERY"
  echo "PDF erstellt: plakat/plakat-$FORMAT.pdf"
done
