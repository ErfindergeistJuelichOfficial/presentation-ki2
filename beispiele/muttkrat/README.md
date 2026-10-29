# Muttkrat — Bild → 3D

Eine Figur, komplett lokal auf der KI-Workstation der Offenen Werkstatt erzeugt: erst ein Bild per Text-Prompt, dann daraus ein 3D-Modell.

| Datei | Inhalt |
|---|---|
| `muttkrat_prompt.md` | Vollständiger Bild-Prompt (Positiv- und Negativ-Prompt) |
| `muttkrat_bild.png` | Schritt 1: erzeugtes Bild (ComfyUI, Z-Image-Turbo) |
| `muttkrat_hunyuan3d.png` | Schritt 2: 3D-Modell in ComfyUI (Hunyuan3D 2.1) |
| `muttkrat_prusaslicer.png` | Schritt 3: Modell im PrusaSlicer |
| `muttkrat_slicer_info.png` | Slicer-Daten: 7,24 g Filament, 1 h 21 min Druckzeit |
| `muttkrat_gedruckt.jpg` | Die gedruckte Figur |

## Ablauf

1. ComfyUI → Templates → *Z-Image-Turbo* → Bild aus dem Prompt erzeugen
2. ComfyUI → Templates → *HY 3D 2.1* → Bild hochladen → 3D-Modell (GLB)
3. GLB in STL umwandeln, in PrusaSlicer skalieren und slicen
4. Drucken

Anleitungen zur Workstation: <https://wiki.erfindergeist.org/>
