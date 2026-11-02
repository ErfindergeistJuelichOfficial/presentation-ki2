# Drucksachen „KI to 3D“: Plakat (A3 / A4 / A5) und Flyer (A5)

Plakat und Flyer als HTML-Dateien. Sie werden per Chrome/Chromium randlos als PDF exportiert. Das A5-Plakat ist zugleich die Vorderseite des Flyers.

| Datei | Inhalt |
|---|---|
| `plakat.html` | Das Plakat — alle Maße in mm, Seitenformat A3 (`@page { size: A3 }`); mit `plakat.html?a4` als A4, mit `plakat.html?a5` als A5 |
| `rueckseite.html` | Rückseite des Flyers — eigenes Layout, alle Maße in mm für A5 |
| `pdf.sh` | Exportiert Plakat und Flyer als PDF |
| `plakat-a3.pdf`, `plakat-a4.pdf`, `plakat-a5.pdf` | Erzeugte Plakat-PDFs (nicht im Repository, siehe `.gitignore`) |
| `flyer-a5.pdf` | Flyer, zweiseitig in einer Datei |
| `flyer-a5-vorderseite.pdf`, `flyer-a5-rueckseite.pdf` | Flyer als Einzelseiten — für Druckereien, die je Seite eine Datei verlangen |

## PDF erzeugen

Voraussetzung: Google Chrome oder Chromium, `pdfunite` (Paket `poppler-utils`) und eine Internetverbindung (für die Schriften).

```shell
./drucksachen/pdf.sh   # → drucksachen/plakat-a3/a4/a5.pdf, flyer-a5.pdf, flyer-a5-vorderseite.pdf, flyer-a5-rueckseite.pdf
```

Das Skript kann aus jedem Ordner aufgerufen werden.

**A4 und A5:** A4 und A5 haben dasselbe Seitenverhältnis wie A3, nur kleiner (A4: Faktor 1/√2, A5: Faktor 1/2). Es gibt deshalb nur ein Layout: Mit `?a4` bzw. `?a5` im Link wird das Plakat per CSS `zoom` verkleinert und das Seitenformat angepasst. Änderungen an `plakat.html` gelten automatisch für alle Formate.

**Flyer:** `flyer-a5.pdf` hat zwei Seiten: Seite 1 ist `plakat.html?a5`, Seite 2 ist `rueckseite.html`. Das Skript fügt beide mit `pdfunite` zusammen. Zusätzlich gibt es beide Seiten einzeln (`flyer-a5-vorderseite.pdf`, `flyer-a5-rueckseite.pdf`) für Druckereien, die je Seite eine Datei verlangen.

## Anpassen

1. `plakat.html` bzw. `rueckseite.html` im Browser öffnen — so sieht man jede Änderung sofort (Seite neu laden).
2. Im Editor bearbeiten:
   - **Texte:** normales HTML im `<body>`
   - **Farben:** CSS-Variablen oben im `<style>` (`--mint`, `--amber`, `--dark`, `--paper`)
   - **Größen und Abstände:** in mm, entsprechen 1:1 dem Druck (Plakat: A3, Rückseite: A5)
   - **Bilder:** relativ eingebunden aus diesem Ordner, `../beispiele/`, `../verein/` und `../qr-codes/`
3. PDFs neu erzeugen mit `./drucksachen/pdf.sh`.

## Automatisch online

Die GitHub-Pipeline (`.github/workflows/deploy.yml`) erzeugt die PDFs bei jedem Push auf `main` und veröffentlicht sie unter
<https://share.erfindergeist.org/presentations/ki2/drucksachen/plakat-a3.pdf>,
<https://share.erfindergeist.org/presentations/ki2/drucksachen/plakat-a4.pdf>,
<https://share.erfindergeist.org/presentations/ki2/drucksachen/plakat-a5.pdf>,
<https://share.erfindergeist.org/presentations/ki2/drucksachen/flyer-a5.pdf>,
<https://share.erfindergeist.org/presentations/ki2/drucksachen/flyer-a5-vorderseite.pdf> und
<https://share.erfindergeist.org/presentations/ki2/drucksachen/flyer-a5-rueckseite.pdf>.

## Hinweise

- **Schriften:** Rubik (Überschriften) und Inter (Text) werden per Link von Google Fonts geladen und beim Export ins PDF eingebettet. Plakat und Flyer werden nur gedruckt bzw. als PDF verteilt, nicht als Webseite veröffentlicht. Zum Erzeugen der PDFs ist daher eine Internetverbindung nötig.
- **Schrift tauschen:** Den Google-Fonts-Link im `<head>` und die Variable `--font-display` im `<style>` anpassen.
- **Kein `.webp`:** Bilder als `.jpg`, `.png` oder `.svg` einbinden.
- **Druckerei:** Die PDFs sind randlos, aber ohne Beschnittzugabe. Viele Druckereien verlangen bei randlosem Druck 2–3 mm Beschnitt pro Seite — vorher die Vorgaben der Druckerei prüfen.
