# Plakat „KI to 3D“ (A3 / A4 / A5)

Werbeplakat für den Workshop als HTML-Datei — wird per Chrome/Chromium randlos als A3- und A4-PDF exportiert, außerdem als A4-Blatt (quer) mit zwei A5-Plakaten zum Durchschneiden.

| Datei | Inhalt |
|---|---|
| `plakat.html` | Das Plakat — alle Maße in mm, Seitenformat A3 (`@page { size: A3 }`); mit `plakat.html?a4` als A4, mit `plakat.html?a5x2` als 2× A5 auf A4 quer |
| `pdf.sh` | Exportiert das Plakat als PDF |
| `plakat-a3.pdf`, `plakat-a4.pdf`, `plakat-a5x2.pdf` | Erzeugte PDFs (nicht im Repository, siehe `.gitignore`) |

## PDF erzeugen

Voraussetzung: Google Chrome oder Chromium ist installiert, Internetverbindung (für die Schriften).

```shell
./plakat/pdf.sh        # → plakat/plakat-a3.pdf, plakat-a4.pdf, plakat-a5x2.pdf
```

Das Skript kann aus jedem Ordner aufgerufen werden.

**A4:** A4 hat dasselbe Seitenverhältnis wie A3, nur um den Faktor 1/√2 kleiner. Es gibt deshalb nur ein Layout: Mit `?a4` im Link wird das Plakat per CSS `zoom` verkleinert und das Seitenformat auf A4 gesetzt. Änderungen an `plakat.html` gelten automatisch für beide Formate. Vorschau im Browser: `plakat.html?a4`.

**A5:** `?a5x2` verkleinert auf 50 % und setzt das Plakat zweimal nebeneinander auf ein A4-Blatt im Querformat (Seite `A4 landscape`). Nach dem Druck in der Mitte durchschneiden.

## Plakat anpassen

1. `plakat.html` im Browser öffnen — so sieht man jede Änderung sofort (Seite neu laden).
2. `plakat.html` im Editor bearbeiten:
   - **Texte:** normales HTML im `<body>` (Datum, Uhrzeit, Ort, Liste „Was Sie erwartet“, Fußzeile)
   - **Farben:** CSS-Variablen oben im `<style>` (`--mint`, `--amber`, `--dark`, `--paper`)
   - **Größen und Abstände:** in mm, entsprechen 1:1 dem A3-Druck (A4: × 0,71)
   - **Bilder:** relativ eingebunden aus `../beispiele/`, `../verein/` und `../qr-codes/`
3. PDF neu erzeugen mit `./plakat/pdf.sh`.

## Automatisch online

Die GitHub-Pipeline (`.github/workflows/deploy.yml`) erzeugt die PDFs bei jedem Push auf `main` und veröffentlicht sie unter
<https://share.erfindergeist.org/presentations/ki2/plakat/plakat-a3.pdf>,
<https://share.erfindergeist.org/presentations/ki2/plakat/plakat-a4.pdf> und
<https://share.erfindergeist.org/presentations/ki2/plakat/plakat-a5x2.pdf>.

## Hinweise

- **Schriften:** Rubik (Überschriften) und Inter (Text) werden per Link von Google Fonts geladen und beim Export ins PDF eingebettet. Das Plakat wird nur gedruckt bzw. als PDF verteilt, nicht als Webseite veröffentlicht. Zum Erzeugen des PDFs ist daher eine Internetverbindung nötig.
- **Schrift tauschen:** Den Google-Fonts-Link im `<head>` und die Variable `--font-display` im `<style>` anpassen.
- **Kein `.webp`:** Bilder als `.jpg`, `.png` oder `.svg` einbinden.
