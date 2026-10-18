# Roter Faden — KI-Workshop 2

Stand: 18.10.2026

**Zielgruppe:** Anfänger ohne Vorwissen
**Aufbau:** Erst KI verstehen — dann KI in unserer Werkstatt nutzen.
**Kernbotschaft:** Alles, was man coden kann, ist super für KI.

---

## Teil A — KI verstehen (für Anfänger)

### 1. Vorstellung Erfindergeist Jülich e.V.

- Wer wir sind: Offene Werkstatt, Wissensvermittlung, Repair Café
- Offene Werkstatt: 3D-Druck (Prusa CORE One+), woher bekommt man 3D-Modelle?
- KI-Workstation in der Werkstatt (lokal, RTX 5060 Ti, 16 GB)
- Spenden

### 2. Was ist KI?

- Einfach erklärt: Programm lernt aus Beispielen statt aus Regeln (Katzen-Beispiel)
- Aufbau eines KI-Modells (neuronales Netz, Regler)
- LLMs: Modell ≠ Anwendung
- Text- und multimodale Modelle (Chihuahua oder Muffin)
- Coding-LLMs, andere Arten von KI
- Was KI nicht ist (Zufallszahl-Experiment)

### 3. Token

- KI liest in Puzzleteilen
- Parameter = Regler im Mischpult
- Geschwindigkeit, was auf die Workstation passt, lokal oder Cloud

### 4. Prompting

- System- und User-Prompt
- SAND-Methode mit Beispiel
- Chat-Umgebung (mit/ohne Gedächtnis), Kontextfenster
- Grenzen: Nichtdeterminismus, Halluzination, Bias, Overreliance

### 5. Eingabemöglichkeiten

- Web-UI, Terminal (Agent), Editor (IDE) — jeweils lokal und Cloud
- Die Workstation im Netzwerk
- Live-Demo Snake
- Brücke: **Code ist Text**

---

## Teil B — KI in unserer Werkstatt nutzen

### 6. 3D-Generierung mit KI

Übersicht: Viele Wege zum 3D-Modell

**Weg 1: Text → Code → 3D (OpenSCAD)**

- Prinzip, OpenSCAD, guter Prompt mit Parametern, einfaches Turm-Beispiel
- Hexenturm Jülich: Module, Skizzen im Prompt, Details, Druck
- Praxisbeispiel: Tischfuß als Ersatzteil (messen → Prompt → OpenSCAD → Druck)

**Weg 2: Bild → 3D (ComfyUI + Hunyuan3D auf der Workstation)**

- Prinzip, gute Bildvorlagen
- Beispiel Toad: Bild-Prompt → Bild → 3D-Modell → Slicer → Druck
- Typische Probleme beim Druck

**Weg 3: MCP — Ausblick**

- KI steuert 3D-Programme wie Blender direkt (nicht Teil des Workshops)

### 7. Zusammenfassung & Fragen

- Vergleich der Wege
- Das sollten Sie mitnehmen
- Fragen & Diskussion

---

## Bonus (je nach verfügbarer Zeit)

- **HuggingFace:** Spielplatz zum Ausprobieren (Bild, Video, Sprache, 3D)
- **Termine-Webseite:** eine Webseite mit KI programmiert
- **Azure Showcases:** Unternehmens-Showcase

## Abschluss

- Referenzen, Spenden, Ende

---

## Offene Fragen zum roten Faden

- Bleibt Teil B beim 3D-Druck, oder kommen weitere Werkstatt-Geräte dazu (Laser, Elektronik, Repair Café)? → siehe `todo.md`
- Passt der Hardware-Teil von „Token“ besser in Teil B zur Workstation?
