# Bildverarbeitung: Vorher/Nachher-Diagramm

Zeigt, wie ein Ablaufdiagramm ein Problem sichtbar macht: Ein Python-Skript bereitet Fotos für eine Galerie auf (Beschriftung per KI, Gesichter verpixeln, Vorschaubilder).

| Datei | Inhalt |
|---|---|
| `vorher.svg` | Ursprünglicher Ablauf: eine große Schleife, alle KI-Modelle gleichzeitig im Speicher |
| `nachher.svg` | Neuer Ablauf: vier Phasen, immer nur ein Modell im Speicher |
| `diagramme.py` | Erzeugt beide SVGs (`python3 diagramme.py`) |

**Prompt:** „Erstelle ein Ablaufdiagramm (Mermaid) für die Funktion process_album() in process.py.“
