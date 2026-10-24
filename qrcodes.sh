#!/bin/sh
# Erzeugt QR-Codes (PNG, 2000 px, Fehlerkorrektur H) für alle wichtigen Links.
# Ausführen über Podman:  podman compose run --rm qrcode
# Ausgabe:                images/qr/<name>.png
#
# Neue Links unten in der Liste ergänzen: "<name> <url ohne https://>"

set -e
OUT="images/qr"
mkdir -p "$OUT"

while read -r name url; do
  [ -z "$name" ] && continue
  case "$name" in \#*) continue ;; esac
  echo "QR-Code: $name -> https://$url"
  qrcode --type "png" --output "$OUT/$name.png" -e "H" -w "2000" "https://$url" </dev/null
done <<'LINKS'
erfindergeist  erfindergeist.org/
wiki           wiki.erfindergeist.org/
praesentation  presentations.erfindergeist.org/ki2/
github         github.com/ErfindergeistJuelichOfficial/presentation-ki2
LINKS
