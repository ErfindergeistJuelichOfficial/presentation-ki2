# Tischfuß als Ersatzteil

Ein gebrochener Kunststoff-Fuß eines Tischbeins: Maße abgenommen, mit KI in OpenSCAD nachkonstruiert und in ABS gedruckt.

| Datei | Inhalt |
|---|---|
| `tischfuss.scad` | OpenSCAD-Code, über 20 Parameter (Maße, Klemmrippen, Fasen) |
| `tischfuss_alt.jpg` | Das gebrochene Original |
| `tischfuss_openscad.png` | Ergebnis in OpenSCAD (dunkles Farbschema) |
| `tischfuss_openscad_hell.png` | Ergebnis in OpenSCAD (Standard-Farbschema) |
| `tischfuss_vergleich.jpg` | Links neu gedruckt, rechts das alte Original |

## Prompt (leicht gekürzt)

> Die Endform ist ein Rohr, das auf einer Seite quadratisch verlängert ist.
>
> - Materialstärke 3 mm · Tiefe außen 55 mm · Höhe außen 57 mm · Breite außen 41 mm
> - Innen Ø 36 mm, nach 10 mm: 12 Streben (4 mm breit, 0,5 mm hoch) → Ø 35 mm
> - Unten Streben: 11 mm lang, 2 mm dick, 6 mm breit
> - Oben offen, unten geschlossen
> - ABS, FDM-Drucker Prusa CORE One

**Tipp:** Passt der Fuß nicht genau, z.B. `bohrung_d` um 0,2 mm ändern und neu drucken — ohne den Code anzufassen.
