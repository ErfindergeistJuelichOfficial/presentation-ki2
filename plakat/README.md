# Plakat „KI to 3D“ (A3)

Werbeplakat für den Workshop als HTML-Datei — wird per Chrome/Chromium randlos als A3-PDF exportiert.

| Datei | Inhalt |
|---|---|
| `plakat.html` | Das Plakat — alle Maße in mm, Seitenformat A3 (`@page { size: A3 }`) |
| `pdf.sh` | Exportiert das Plakat als PDF |
| `plakat-a3.pdf` | Erzeugtes PDF (nicht im Repository, siehe `.gitignore`) |

## PDF erzeugen

Voraussetzung: Google Chrome oder Chromium ist installiert, Internetverbindung (für die Schriften).

```shell
./plakat/pdf.sh        # → plakat/plakat-a3.pdf
```

Das Skript kann aus jedem Ordner aufgerufen werden.

## Plakat anpassen

1. `plakat.html` im Browser öffnen — so sieht man jede Änderung sofort (Seite neu laden).
2. `plakat.html` im Editor bearbeiten:
   - **Texte:** normales HTML im `<body>` (Datum, Uhrzeit, Ort, Liste „Was Sie erwartet“, Fußzeile)
   - **Farben:** CSS-Variablen oben im `<style>` (`--mint`, `--amber`, `--dark`, `--paper`)
   - **Größen und Abstände:** in mm, entsprechen 1:1 dem Druck
   - **Bilder:** relativ eingebunden aus `../beispiele/`, `../verein/` und `../qr-codes/`
3. PDF neu erzeugen mit `./plakat/pdf.sh`.

## Automatisch online

Die GitHub-Pipeline (`.github/workflows/deploy.yml`) erzeugt das PDF bei jedem Push auf `main` und veröffentlicht es unter
<https://presentations.erfindergeist.org/ki2/plakat/plakat-a3.pdf>.

## Hinweise

- **Schriften:** Rubik (Überschriften) und Inter (Text) werden per Link von Google Fonts geladen und beim Export ins PDF eingebettet. Das Plakat wird nur gedruckt bzw. als PDF verteilt, nicht als Webseite veröffentlicht. Zum Erzeugen des PDFs ist daher eine Internetverbindung nötig.
- **Schrift tauschen:** Den Google-Fonts-Link im `<head>` und die Variable `--font-display` im `<style>` anpassen.
- **Kein `.webp`:** Bilder als `.jpg`, `.png` oder `.svg` einbinden.
