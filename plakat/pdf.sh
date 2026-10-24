#!/bin/sh
# Erzeugt plakat/plakat-a3.pdf aus plakat/plakat.html (A3, randlos).
# Benötigt Google Chrome oder Chromium.
set -e
cd "$(dirname "$0")"
BROWSER=$(command -v google-chrome || command -v chromium || command -v chromium-browser)
[ -z "$BROWSER" ] && { echo "Chrome/Chromium nicht gefunden"; exit 1; }
"$BROWSER" --headless=new --disable-gpu --no-sandbox \
  --no-pdf-header-footer --virtual-time-budget=3000 \
  --print-to-pdf="$PWD/plakat-a3.pdf" "file://$PWD/plakat.html"
echo "PDF erstellt: plakat/plakat-a3.pdf"
