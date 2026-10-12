# TODO — KI-Workshop 2

Stand: 12.10.2026 · Gliederung siehe `roter_faden.md` (umgesetzt in `ki2.qmd`)

**Linie:** verstehen → richtig fragen → Werkzeuge kennen → etwas Echtes bauen
**Kernbotschaft:** Alles, was man coden kann, ist super für KI.

- [x] Den lokalen KI-Rechner in der Werkstatt mehr in den Mittelpunkt rücken (Doku: <https://docs.erfindergeist.org/s/wiki/doc/workstation-kcLc2sv1PX>)
  - Neue Folien: „Offene Werkstatt: KI-Workstation“, „Token: Was passt auf unsere Workstation?“, „Lokal: Die Workstation im Netzwerk“
  - ComfyUI-Workflow mit Wiki-Screenshots (Santa: Z-Image-Turbo → Hunyuan3D 2.1), „Gute Vorlagen für Bild → 3D“
  - GLB → STL mit assimp, PrusaSlicer auf der Workstation, Drucker korrekt als Prusa CORE One+

---

## Offen — braucht Material oder Entscheidung

### Inhalte / Bilder

- [ ] **OpenSCAD lokal:** Hexenturm-Prompt mit OpenCode + `qwen2.5-coder:14b` auf der Workstation ausführen, Screenshot einfügen; ehrlich zeigen, wo es an Grenzen stößt (TODO in Folie „OpenSCAD: Lokal mit OpenCode“)
- [x] **ComfyUI + Hunyuan3D:** Workflow-Screenshot und Ergebnis eingefügt (aus dem Wiki)
- [ ] **Hunyuan3D-2.1 auf HuggingFace:** Space testen, Screenshot einfügen (TODO in Folie)
- [ ] **Gedruckter Hexenturm:** Foto einfügen, falls vorhanden (TODO in Folie „Selbst ausprobieren“)
- [ ] **Chihuahua-Folie:** Bildnachweis (`aside` mit Fotografen) fehlt auf der Folie — bewusst entfernt?

### Workstation & Live-Demos

- [ ] **Tokens pro Sekunde messen:** auf der Workstation `ollama run qwen2.5-coder:14b --verbose` (zeigt „eval rate“) und das RTX-4090-Beispiel auf der Folie „Tokens pro Sekunde“ durch eigene Werte ersetzen
- [ ] **Generalprobe aller Demos auf der Workstation:** Open WebUI, OpenCode, Continue, Chihuahua mit `gemma4:12b`, ComfyUI Santa → GLB → STL → PrusaSlicer; Zeiten notieren (wie lange braucht Hunyuan3D?)
- [ ] **Santa drucken:** Den Santa aus dem Wiki-Beispiel drucken und als Anschauungsobjekt mitbringen; Foto für die Folie „Selbst ausprobieren“
- [ ] **ComfyUI-Speicher:** Vor der 3D-Demo Speicher freigeben (Z-Image und Hunyuan3D nacheinander) — Vorgehen klären, steht im Wiki noch als TODO
- [ ] **VS Code auf der Workstation:** Extensions lassen sich nicht installieren (Wiki-TODO) — betrifft die IDE-Demo mit Continue
- [ ] **Netzwerk im Workshop:** Können Teilnehmende ins Netzwerk der Werkstatt (AWO), um Open WebUI selbst auszuprobieren? Dann Lasttest mit mehreren gleichzeitigen Anfragen
- [ ] **Datenschutz-Hinweis:** Falls Teilnehmende Open WebUI nutzen — Chats werden auf der Workstation gespeichert; kurz auf der Folie oder mündlich erwähnen

### Prüfen

- [ ] Gesamte Präsentation rendern und auf Überlauf prüfen — besonders: Eingabemöglichkeiten-Übersicht, „Die Workstation im Netzwerk“, „Was passt auf unsere Workstation?“, Vergleich der Wege, Referenzen (zwei Spalten, jetzt je 8 Einträge), Präzision und RAM-Bedarf
- [ ] Modellnamen gegenprüfen: `gemma4:12b` und `qwen3.5:9b` exakt so wie in Ollama installiert (`ollama list`)

### Entscheidungen

- [ ] Titel „KI to 3D“ — ja oder nein?
- [ ] Untertitel „WORK IN PROGRESS - XX.XX.2026“ → echtes Datum
- [ ] Spenden-Folie steht doppelt (Vorstellung + Ende) — beide behalten?
- [ ] Workshop-Dauer → welche Bonus-Teile bleiben?
- [ ] Gibt es einen gedruckten Hexenturm zum Herumzeigen?
- [ ] Was lässt sich mit ComfyUI + Hunyuan3D live zeigen, was nur als Bild/Video?

---

## Ideen

- [ ] **Mitmach-Aktion:** Publikum schlägt eine Figur vor → live Bild erzeugen → 3D-Modell → in PrusaSlicer zeigen. Den Druck vorab mit dem Santa demonstrieren, da ein echter Druck zu lange dauert
- [ ] **QR-Codes:** Auf der Workstation-Folie und der Ende-Folie QR-Codes zum Wiki und zur Online-Präsentation (lokal als SVG erzeugen, kein externer Dienst)
- [ ] **Sprach-Pipeline lokal:** Open WebUI kann Spracheingabe und Vorlesen — als lokales Gegenstück zur Whisper-+-Kokoro-Folie im Bonus zeigen
- [ ] **Lokal vs. Cloud live:** Denselben OpenSCAD-Prompt parallel auf der Workstation und mit Claude Code laufen lassen und Ergebnis und Zeit vergleichen

## Wiki-Pflege (Vorschläge)

- [ ] „ConfyUI“ → „ComfyUI“ (Seitentitel und Texte)
- [ ] „GBL“ → „GLB“ (Seite „GBL to STL Konvertieren“ und Beispiel-Workflow)
- [ ] „KI Sprachchat“ ist ein Text-Chat → umbenennen oder Spracheingabe ergänzen
- [ ] Offene Wiki-TODOs füllen: „STL cleanen“ (passt zur Folie „Typische Probleme“), „RAM freigeben“ (ComfyUI), „KI Coden“ (Work in Progress)
- [ ] Continue-Config: Link im Wiki ist fehlerhaft formatiert („Extensionhttps://…“)
