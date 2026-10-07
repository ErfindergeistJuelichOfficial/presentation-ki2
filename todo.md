# TODO — Roter Faden KI-Workshop 2

Ziel: Vom Verständnis „Was ist KI?“ über gutes Prompting bis zum **3D-druckbaren Objekt**.
Kernbotschaft (aus `roter_faden.md`): **Alles, was man als Code beschreiben kann, kann KI gut.**

---

## 1. Vorgeschlagene Gliederung

| # | Section | Frage für das Publikum | Status |
|---|---|---|---|
| 1 | Vorstellung Erfindergeist | Wer sind wir? | vorhanden |
| 2 | Ablauf | Was erwartet mich? | **an neue Reihenfolge anpassen** |
| 3 | Was ist KI? | Was kann KI, was nicht? | vorhanden, umsortieren |
| 4 | Prompting | Wie rede ich richtig mit KI? | vorhanden |
| 5 | Token & Hardware | Cloud oder lokal – was kostet was? | vorhanden, Abschlussfolie fehlt |
| 6 | Vom Chat zum Code | Warum ist KI so gut im Programmieren? | **neu (Brücke)** |
| 7 | KI to 3D – Hauptteil | Wie komme ich mit KI zum 3D-Modell? | teilweise vorhanden |
| 8 | Vom Modell zum Druck | Wie wird daraus ein echtes Objekt? | **neu** |
| 9 | Ausblick: Was KI sonst noch kann | HuggingFace-Demos | vorhanden, verschieben |
| 10 | Unternehmens-Showcase | Wie nutzen Firmen KI? | leer |
| 11 | Zusammenfassung, Fragen, Spenden, Ende | Was nehme ich mit? | Zusammenfassung fehlt |

---

## 2. Neue Folien (Lücken im roten Faden)

### Brücke: Vom Chat zum Code (neue Section)
- [ ] Einstiegsfolie „Code ist Text“: LLMs schreiben Text → Code ist Text → KI kann programmieren
- [ ] Beispiele aus `roter_faden.md`: Webseite (Snake), Präsentation (Quarto – diese Präsentation!), CAD (OpenSCAD)
- [ ] „Web-GUI mit Tools“, „Spezielle Coding-LLMs“ und „Live Coding Snake“ hierher verschieben
- [ ] Termine-Webseite (Plan, Herzanimation, CLAUDE.md, Achievements) als größeres Praxisbeispiel hierher
- [ ] Überleitung: „Wenn KI Webseiten bauen kann – warum nicht auch 3D-Modelle?“

### KI to 3D – Übersicht
- [ ] Übersichtsfolie „Drei Wege zum 3D-Modell“ (Text → Code → 3D / Bild → 3D lokal / Bild → 3D Cloud)
- [ ] Optional neuer Präsentationstitel „KI to 3D“ (siehe `roter_faden.md`)

### Weg 1: Cloud – OpenSCAD + Claude Code
- [x] vorhanden (Hexenturm)
- [ ] „KI ersetzt keine CAD-Kenntnisse“ als Merke-Zeile hervorheben

### Weg 2: Lokal – OpenSCAD + OpenCode + lokales Coding-Modell (in `roter_faden.md` noch „???“)
- [ ] Vorschlag: derselbe Prompt wie bei Weg 1, aber mit OpenCode + Ollama (z.B. Qwen3-Coder)
- [ ] Ergebnis lokal vs. Cloud nebeneinander zeigen → knüpft an Section „Token & Hardware“ an
- [ ] Ehrlich zeigen: Wo stößt das lokale Modell an Grenzen?

### Weg 3: Bild → 3D
- [ ] Pipeline-Folie: Text → Bild (FLUX / ComfyUI) → 3D-Modell (Hunyuan3D / Meshy / Pixal3D)
- [ ] Lokal: ComfyUI + Hunyuan3D – Beispielbilder fehlen (TODO in `ki2.qmd`)
- [ ] Cloud: Meshy – „gezeichnetes Bild → 3D-Modell“-Abbildung fehlt (TODO in `ki2.qmd`)
- [ ] HuggingFace: Hunyuan3D-2.1 testen und einbauen → <https://huggingface.co/spaces/tencent/Hunyuan3D-2.1>
- [ ] Vergleichsfolie „Pixal3D vs. OpenSCAD“ zu **Vergleich aller drei Wege** erweitern (präzise/technisch vs. organisch/kreativ, lokal vs. Cloud, Kosten)

### Vom Modell zum Druck (neue Section)
- [ ] Export: OpenSCAD → STL, Meshy/Hunyuan → GLB/OBJ → STL
- [ ] Slicer → 3D-Drucker
- [ ] Typische Probleme bei KI-Meshes: nicht druckbare Überhänge, Löcher im Mesh, Wandstärken
- [ ] Foto vom gedruckten Hexenturm (falls vorhanden)
- [ ] Hinweis auf Offene Werkstatt des Vereins (3D-Drucker) → schließt den Kreis zur Vorstellung

### Section 5: Abschluss
- [ ] Folie „Cloud oder lokal? Entscheidungshilfe“: Datenschutz, Kosten, Leistung, Offline-Fähigkeit
- [ ] Datenschutz kurz ansprechen: Was passiert mit meinen Daten in der Cloud?

### Zusammenfassung (vor „Fragen“)
- [ ] Eine Folie mit dem roten Faden: Verstehen → Gut fragen → Code erzeugen lassen → 3D-Modell → Drucken
- [ ] Die „Merke“-Zeilen aus den Folien als Rückblick sammeln

---

## 3. Umsortieren

- [ ] „Was ist KI nicht“ direkt nach „Was sind LLM“ (gehört zur Grundlagen-Erklärung)
- [ ] „Andere Arten von KI“ ans Ende von „Was ist KI?“
- [ ] Section „Token“ **vor** „Prompting“ erwägen – Kontextfenster-Folien verwenden den Begriff bereits
- [ ] Lokal-Sections (Ollama, OpenCode, ComfyUI) passend in die neue Gliederung einordnen: Ollama/OpenWebUI + OpenCode → „Vom Chat zum Code“, ComfyUI → Weg 3
- [ ] HuggingFace FLUX → Weg 3 (Bild als Vorlage für 3D); Wan2.2, Whisper, Kokoro → „Ausblick“ oder als Bonus ans Ende
- [ ] Spenden-Folie kommt doppelt vor (Anfang + Ende) – bewusst so? Sonst eine streichen

---

## 4. Überarbeiten / Fehler

### Konsistenz
- [ ] Ablauf-Folien (Zeile ~71–137) an neue Reihenfolge anpassen; HuggingFace-Liste enthält noch kein Hunyuan3D
- [ ] Kontextfenster widersprüchlich: „Token: Beispiel Rechnung Buch“ (128.000 bei GPT-4o) und Tabelle „Was sagt uns das nun?“ (128K+) vs. neue Folie (bis 1 Mio.)
- [ ] Preise/Modelle aktualisieren: GPT-4o im Buch-Beispiel evtl. veraltet, Screenshot `chat_gpt_costs.png` vom 09.04.2026
- [ ] HTML-Kommentar zu Tokens Cloud vs. lokal (Zeile ~256) steht in „Was ist KI nicht“ → in Section Token verschieben

### Zu viel Text (Folien sprengen)
- [ ] „Was ist KI nicht“: Erklärung zur Zufallszahl kürzen, Rest in Notes
- [ ] „Lokal: Ollama und OpenWeb UI“: Fließtext → Bullets, Marketing-Ton raus
- [ ] „Lokal: OpenCode“: Beschreibung stimmt nicht ganz – OpenCode ist ein Coding-Agent im Terminal, nicht nur Code-Vervollständigung
- [ ] „Lokal: ConfyUI“ und „Cloud: Meshy“: Fließtext → Bullets, „fortschrittliche KI-Technologien“ streichen
- [ ] „Token: Beispiel Rechnung Buch“: dritter Punkt zu lang
- [ ] „Was sagt uns das nun?“ ist eine Ergebnisfolie, sollte als **Merke** klarer formuliert sein

### Tippfehler / Namen
- [ ] „ConfyUI“ → „ComfyUI“ (Section-Titel und Referenzen; Link `confyui.com` ist falsch → <https://www.comfy.org>)
- [ ] „Archivments“ → „Achievements“; „anomationen“, „an teaser“ prüfen
- [ ] „Andere arten von KI“ → „Andere Arten von KI“
- [ ] Untertitel „WORK IN PROGRESS - XX.XX.2026“ → echtes Datum

### Leere Sections
- [ ] „Microsoft“: nur ein Link
- [ ] „Cloud: Azure Showcases“: Platzhalter „xxx love xxx“
- [ ] „Erfindergeist Jülich e.V.“ im Handout: Kurzvorstellung fehlt
- [ ] „Reicht ein Plan?“: nur ein Satz

### Referenzen
- [ ] Fehlende Links: OpenSCAD, Claude Code, HuggingFace, Hunyuan3D, Pixal3D, FLUX, Whisper, Kokoro
- [ ] Abrufdatum ergänzen (CLAUDE.md-Vorgabe)

---

## 5. Begleitmaterial

- [ ] Handout an neue Gliederung anpassen (Prompting/SAND, Token, 3D-Wege, Vom Modell zum Druck)
- [ ] Projektübersicht in `CLAUDE.md` aktualisieren, sobald die Reihenfolge feststeht
- [ ] `roter_faden.md` nach Umsetzung in diese Datei überführen oder löschen

---

## 6. Offene Fragen

- Neuer Titel „KI to 3D“ – ja oder nein?
- Wie viel Zeit hat der Workshop? Danach entscheiden, ob Wan2.2, Whisper und Kokoro bleiben
- Welche Firma macht den Unternehmens-Showcase, und wie viel Zeit bekommt sie?
- Gibt es einen gedruckten Hexenturm zum Herumzeigen?
