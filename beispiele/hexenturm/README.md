# Hexenturm Jülich

Das Wahrzeichen von Jülich — mit KI (Claude Code) Schritt für Schritt in OpenSCAD konstruiert und in der Offenen Werkstatt gedruckt.

| Datei | Inhalt |
|---|---|
| `hexenturm.scad` | OpenSCAD-Code des Modells, alle Maße als Parameter |
| `hexenturm_fertig.png` | Das fertige Modell in OpenSCAD |
| `hexenturm_module.png` | Aufbau aus einzelnen Modulen |
| `hexenturm_details.png` | Details wie Fenster, Torbogen und Wandstruktur |
| `hexenturm_skizze_tunnel.png` | Skizze, die beim Prompt für den Tunnel mitgeschickt wurde |
| `hexenturm_skizze_verzierung.png` | Skizze für die Steinverzierung am Tunnel |
| `hexenturm_skizze_gesamt.png` | Handzeichnung des ganzen Turms — für den Test Bild → 3D |
| `hexenturm_gedruckt.jpg` | Der gedruckte Hexenturm |

## Beispiel-Prompts (vereinfacht)

> Erstelle ein Rechteck, durch das ein Tunnel geht. Anbei ein Bild, wie ich es mir vorstelle.

> Entlang des Tunnels hätte ich gerne an nur einer Seite eine Verzierung: Steine, die abwechselnd größer und kleiner werden. Oben mittig ist ein Spezialstein. Anbei ein Bild, wie ich es mir etwa vorstelle.

**Vorgehen:** Große Aufgabe in Module zerlegen, jedes Modul einzeln mit Text + Skizze beschreiben, Details erst ergänzen, wenn die Grundform steht.
