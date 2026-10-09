# Roter Faden — KI-Workshop 2

**Ziel des Hauptteils:** 3D-druckbare Objekte mit Hilfe von KI entwickeln.
**Linie:** verstehen → richtig fragen → Werkzeuge kennen → etwas Echtes bauen

Titel-Idee: **KI to 3D**

## Merken

Alles, was man coden kann, ist super für KI:

- OpenSCAD (CAD)
- Quarto (Präsentationen)
- Webseiten (Termine-Webseite, Snake)
- weitere Beispiele finden

## Gliederung

### 1. Vorstellung Erfindergeist Jülich e.V.

- Verein, Angebote, Offene Werkstatt (3D-Drucker → Bezug zum Hauptteil)

### 2. Was ist KI?

- Was ist KI, was sind LLMs
- Arten von LLMs: Text vs. multimodal (Chihuahua oder Muffin) → wichtig für Bild → 3D
- Spezielle Coding-LLMs
- Andere Arten von KI
- Was ist KI nicht

### 3. Token

Nicht mehr Kosten, nur die Grundlagen und die Unterschiede zwischen lokal und Cloud.

- Was ist ein Token?
- Parameter, Präzision, RAM-Bedarf
- Tokens pro Sekunde
- Lokal vs. Cloud: Gegenüberstellung

### 4. Prompting

- Was ist ein Prompt (System vs. User)
- SAND-Methode + Beispiel
- Chat-Umgebung (mit / ohne Gedächtnis)
- Kontextfenster (nutzt den Begriff Token → deshalb Token vorher)
- Antworten: Nichtdeterminismus, Halluzination, Bias, Overreliance

### 5. Eingabemöglichkeiten

Brücke zum 3D-Teil: Die 3D-Wege nutzen genau diese Werkzeuge.

| Art | Lokal | Cloud |
|---|---|---|
| Chat im Browser (Web-UI) | Open WebUI | ChatGPT, Claude.ai, Gemini |
| Terminal / Agent (CLI) | OpenCode | Claude Code |
| Im Editor (IDE) | VS Code + Ollama | GitHub Copilot |


- Web-GUI mit Tools
- Live-Demo Snake: derselbe Prompt im Web-UI und im CLI-Agent

### 6. 3D-Generierung (Hauptteil)

Aufbau in Paaren lokal / Cloud:

**Weg 1: Text → Code → 3D (OpenSCAD)**

- OpenSCAD: CAD-Dateien per Code statt mit der Maus
- Cloud: Claude Code (Hexenturm Jülich, Text und Bilder als Prompt)
- Lokal: OpenCode + lokales Coding-Modell (gleicher Prompt, Ergebnis vergleichen)

**Weg 2: Bild → 3D**

- Lokal: ComfyUI + Hunyuan3D
- Cloud: Meshy (gezeichnetes Bild → 3D-Modell)
- Ohne Installation testen (HuggingFace):
  - Hunyuan3D-2.1: <https://huggingface.co/spaces/tencent/Hunyuan3D-2.1>
  - Pixal3D: <https://huggingface.co/spaces/TencentARC/Pixal3D>

**Vergleich der Wege:** präzise/technisch vs. organisch/kreativ, lokal vs. Cloud

**Vom Modell zum Druck**

- Export als STL → Slicer → 3D-Drucker
- Typische Probleme bei KI-Meshes
- Offene Werkstatt des Vereins

### 7. Zusammenfassung & Fragen

- Roter Faden auf einer Folie
- Merke-Zeilen als Rückblick
- Fragen & Diskussion

### 8. Bonus (je nach verfügbarer Zeit)

- **HuggingFace:** FLUX.1, Wan2.2, Whisper, Kokoro
- **Termine-Webseite:** Coding einer Webseite (Plan, Herzanimation, CLAUDE.md, Achievements)
- **Azure Showcases** (= Unternehmens-Showcase)

### 9. Spenden & Ende

## Tests

-
