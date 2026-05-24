# CLAUDE.md — KI-Workshop 2 Präsentation

## Projektübersicht

Quarto Reveal.js-Präsentation für den **KI-Workshop 2** des Erfindergeist Jülich e.V.
Ziel: Teilnehmer ohne Vorwissen durch die Welt der KI führen — von Grundlagen bis zu echten Unternehmensanwendungen.

Die Präsentation deckt folgende Themen ab (Reihenfolge):
1. Vorstellung Erfindergeist Jülich e.V.
2. Ablauf und Agenda
3. Was ist KI? / Was ist sie nicht?
4. Token, Parameter, Präzision, RAM-Bedarf
5. Lokale KI: Ollama + OpenWeb UI, OpenCode, ComfyUI
6. Cloud-KI: OpenSCAD + Claude Code (3D-Modellierung), Meshy, Azure
7. Unternehmens-Showcase
8. Fragen & Diskussion

## Dateien

| Datei | Zweck |
|---|---|
| `ki2.qmd` | **Haupt-Präsentation** — alle Folien hier |
| `styles.css` | Custom CSS für Reveal.js (nicht in `_brand.yml` abbildbar) |
| `_brand.yml` | Farb- und Typografie-Definitionen |
| `_quarto.yml` | Projekt- und Format-Konfiguration |
| `images/` | Alle Bilder; SVGs bevorzugen wo möglich |

## CI / Design-Vorgaben

Farben aus `_brand.yml` — niemals davon abweichen:

| Name | Hex | Verwendung |
|---|---|---|
| `mint` | `#159989` | Primary, H1-Unterstrich, Bullets, Code-Blöcke-Border, Fortschrittsbalken |
| `amber` | `#F9B338` | Secondary, `**fett**`, `code`, Links, OL-Marker |
| `dark-grey` | `#222222` | Hintergrund |
| `dark-medium` | `#2d2d2d` | Code-Block-Hintergrund, Tabellen-Zebrastreifen |
| `white` | `#ffffff` | Fließtext |
| `light-grey` | `#aaaaaa` | Subtitle, dezente Elemente |

**Keine Google Fonts** — DSGVO-Vorgabe. Keine externen Font-CDNs einbinden.

## Quarto Reveal.js — Wichtige Konventionen

### Folientypen

```markdown
# Abschnittstitel          ← Neue Section (große Titelfolie)
## Unterfolie              ← Normale Inhaltsfolie innerhalb der Section
```

Navigation ist **vertikal** (`navigation-mode: vertical`) — `#` wechselt horizontal, `##` vertikal.

### Spalten-Layout

```markdown
::: columns
::: {.column width="60%"}
Inhalt links
:::
::: {.column width="40%"}
Inhalt rechts
:::
:::
```

Spalten-Breiten immer explizit angeben und auf 100 % addieren.

### Bilder

```markdown
![](images/datei.png){fig-align="center" height="500"}
```

**`height="500"` ist der Standard für Vollbild-Bilder** — so bleibt das Bild im Bildschirm.
Breiten-Prozent (`width="100%"`) nur in Spalten-Layouts.

### Fußnoten / Quellenangaben

```markdown
::: aside
Quellenangabe oder Fußnote hier.
:::
```

### Speaker Notes

```markdown
::: {.notes}
Sprechernotizen hier — nicht auf der Folie sichtbar.
:::
```

### Tabellen

```markdown
| Spalte A | Spalte B |
|---|---|
| Wert | Wert |

: {tbl-colwidths="[30,70]"}
```

`tbl-colwidths` immer angeben, damit Tabellen nicht überlaufen.

## Kritische Regel: Kein Text außerhalb des Bildschirms

**Das ist das häufigste Problem — immer zuerst prüfen.**

Checkliste für jede neue Folie:
- Bullet-Listen: maximal **5–6 Punkte** pro Folie, sonst aufteilen
- Langer Fließtext: in Bullets umwandeln oder auf mehrere Folien verteilen
- Bilder mit `height` begrenzen: `height="500"` für große, `height="350"` in Spalten-Layouts
- Code-Blöcke: nur kurze Snippets direkt auf Folie; lange Beispiele → Datei + `code-link`
- Tabellen mit vielen Spalten: Spaltenbreiten mit `tbl-colwidths` kontrollieren
- Bei Spalten-Layouts: Inhalte jeder Spalte einzeln auf Überlauf prüfen
- `font-size: smaller` als CSS-Klasse nutzen wenn nötig: `[Text]{style="font-size:0.75em"}`

Wenn eine Folie zu voll wird: **aufteilen**, nicht verkleinern. Lieber eine Folie mehr.

## Hilfsklassen (styles.css)

```markdown
[Chip-Text]{.token-chip}   ← Gelber Chip im Monospace-Stil (z.B. für Token-Beispiele)
```

## HTML-Demo-Folien

Interaktive Demos werden als **eigenstandige HTML-Dateien** im Root abgelegt (z.B. `demo-heart.html`).
Quarto kopiert sie automatisch nach `_site/` - keine Quarto-Konfiguration notig.

JavaScript-Bibliotheken (GSAP etc.) mussen **lokal** unter `js/` liegen - nicht von externen CDNs laden,
da die Prasentation stand-alone funktionieren muss (share.erfindergeist.org wird abgeschaltet).

Einbindung in eine Folie via iframe:

```markdown
## Titel {background-color="#222222"}

```{=html}
<iframe src="demo-name.html"
  style="width:100%;height:85vh;border:none;background:#222222;">
</iframe>
```
```

Regeln:

- `background-color` auf der Folie immer mit dem Demo-Hintergrund abstimmen (`#222222` fur Dark)
- Kein erklarender Text in der HTML-Datei - Erklarung auf Vor- oder Nachfolgefolie
- GSAP laden via `<script src="js/gsap.min.js"></script>`

Bestehende Demos:

| Datei | Inhalt |
| --- | --- |
| `demo-heart.html` | GSAP-Pulsanimation: Kreis (alt) vs. Herzform (neu) |

## Build

```bash
quarto render ki2.qmd
quarto preview ki2.qmd    # Live-Vorschau mit Auto-Reload
```

Output landet in `_site/`.

## Inhaltliche Leitlinien beim Erweitern

- **Sprache**: Deutsch, Du-Form vermeiden (Workshop-Publikum ist gemischt) — Sie-Form oder direkte Anrede
- **Ton**: sachlich-informativ, kein Marketing-Sprech, keine Übertreibungen
- **Tiefe**: Einsteiger-freundlich — technische Begriffe immer kurz erklären
- **Struktur**: Jede neue Demo oder jedes Tool bekommt eine Section (`#`) und mindestens eine Unterfolie (`##`)
- **Quellen**: Externe Links immer mit Datum-Hinweis versehen (Preise / Specs ändern sich)
- **TODOs**: Unfertige Folien mit `<!-- TODO: ... -->` markieren, nicht leer lassen
