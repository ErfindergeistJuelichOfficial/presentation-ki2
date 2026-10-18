# TODO — KI-Workshop 2

Stand: 18.10.2026 · Gliederung siehe `roter_faden.md`

**Linie:** KI verstehen (für Anfänger) → KI in unserer Werkstatt nutzen
**Kernbotschaft:** Alles, was man coden kann, ist super für KI.

---

## Offen — braucht Material oder Entscheidung

### Inhalte / Bilder

- [ ] **Folie „TODO FOTO“** (nach „Typische Probleme“): Foto vom gedruckten Toad einfügen (Entscheidung: ja)
- [ ] **Chihuahua-Folie:** Bildnachweis (`aside` mit Fotografen) fehlt auf der Folie — bewusst entfernt?

### Workstation & Live-Demos

- [ ] **Tokens pro Sekunde messen:** auf der Workstation `ollama run qwen3.5:9b --verbose` und `qwen2.5-coder:14b --verbose` („eval rate“) — die Folie „Wie schnell schreibt die KI?“ zeigt bisher nur geschätzte Werte (TODO in Folie)
- [ ] **Generalprobe aller Demos auf der Workstation:** Open WebUI, OpenCode, Continue, Chihuahua mit `gemma4:12b`, ComfyUI Toad → GLB → STL → PrusaSlicer; Zeiten notieren (wie lange braucht Hunyuan3D?)
- [ ] **Toad drucken:** als Anschauungsobjekt mitbringen und für die Folie „TODO FOTO“ fotografieren — PrusaSlicer-Daten liegen vor (7,24 g, 1 h 21 min)
- [ ] **ComfyUI-Speicher:** Vor der 3D-Demo Speicher freigeben (Z-Image und Hunyuan3D nacheinander) — Vorgehen klären, steht im Wiki noch als TODO
- [ ] **VS Code auf der Workstation:** Extensions lassen sich nicht installieren (Wiki-TODO) — betrifft die IDE-Demo mit Continue
- [ ] **Netzwerk im Workshop:** Können Teilnehmende ins Netzwerk der Werkstatt (AWO), um Open WebUI selbst auszuprobieren? Dann Lasttest mit mehreren gleichzeitigen Anfragen
- [ ] **Datenschutz-Hinweis:** Falls Teilnehmende Open WebUI nutzen — Chats werden auf der Workstation gespeichert; kurz auf der Folie oder mündlich erwähnen

### Prüfen

- [ ] Präsentation im Browser auf Überlauf prüfen (Rendern läuft fehlerfrei) — besonders: Eingabemöglichkeiten-Übersicht, „Die Workstation im Netzwerk“, Referenzen (zwei Spalten), Tischfuß-Folien, Karten-Folien (Wer wir sind, Wie schnell, Typische Probleme, Zum Nachlesen)
- [ ] Modellnamen gegenprüfen: `gemma4:12b` und `qwen3.5:9b` exakt so wie in Ollama installiert (`ollama list`); „Kimi K3“ auf der Folie „Spezielle Coding-LLMs“ prüfen

### Entscheidungen

- [x] ~~Titel „KI to 3D“ — ja oder nein?~~ — ja, Titel geändert
- [ ] Untertitel „WORK IN PROGRESS - XX.XX.2026“ → echtes Datum

---

## Review vom 18.10.2026 — gefundene Probleme

### Roter Faden

- [x] **Werkstatt = nur 3D-Druck:** Der Anwendungsteil zeigt ausschließlich den 3D-Drucker. Die Vorstellung nennt aber CNC, Holz, Metall, Elektro, IT und das Repair Café. Entweder bewusst auf 3D-Druck fokussieren (dann Titel „KI to 3D“) oder 1–2 weitere Werkstatt-Beispiele ergänzen (Ideen siehe unten)
- [ ] **Token-Teil sehr technisch für den Anfänger-Block:** Parameter, Grafikspeicher und Tokens pro Sekunde kommen vor dem Prompting. Überlegen, ob „Wie schnell schreibt die KI?“, „Was passt auf unsere Workstation?“ und „Lokal oder Cloud?“ besser zu „Eingabemöglichkeiten“ bzw. zur Workstation passen — dort sind sie konkret

- [ ] **„Das sollten Sie mitnehmen“** enthält keinen Punkt zur Werkstatt bzw. zum 3D-Druck — z.B. „Mit KI und Werkstatt vom kaputten Teil zum Ersatzteil“
- [x] **„OpenSCAD mit KI: Zusammenfassung“** steht vor dem Tischfuß-Praxisbeispiel — danach würde es den ganzen Weg 1 zusammenfassen

## Wiki-Pflege (Vorschläge)

- [ ] „ConfyUI“ → „ComfyUI“ (Seitentitel und Texte)
- [ ] „GBL“ → „GLB“ — Seitentitel ist korrigiert, im Text von „GLB to STL Konvertieren“ und „KI Beispiel Workflow“ steht noch „gbl“
- [ ] „KI Sprachchat“ ist ein Text-Chat → umbenennen oder Spracheingabe ergänzen
- [ ] Offene Wiki-TODOs füllen: „STL cleanen“ (passt zur Folie „Typische Probleme“), „RAM freigeben“ (ComfyUI), „KI Coden“ (Work in Progress)
