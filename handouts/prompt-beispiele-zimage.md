---
title: Bild-Prompts zum Ausprobieren
subtitle: Text → Bild mit ComfyUI und Z-Image-Turbo
format:
  pdf:
    documentclass: scrartcl
    papersize: a4
    pdf-engine: pdflatex
    geometry:
      - top=34mm
      - bottom=18mm
      - left=20mm
      - right=20mm
      - headheight=20mm
      - headsep=6mm
    fontsize: 10.5pt
    include-in-header:
      text: |
        \usepackage{helvet}
        \renewcommand{\familydefault}{\sfdefault}
        \usepackage{xcolor}
        \definecolor{mint}{HTML}{159989}
        \definecolor{amber}{HTML}{F9B338}
        \definecolor{paper}{HTML}{F4F7F6}
        \usepackage{graphicx}
        \usepackage{fancyhdr}
        \pagestyle{fancy}
        \fancyhf{}
        \fancyhead[R]{\raisebox{-3mm}{\includegraphics[height=17mm]{../verein/logo.png}}}
        \renewcommand{\headrulewidth}{0pt}
        \fancypagestyle{plain}{}
        \setkomafont{title}{\color{mint}\bfseries}
        \setkomafont{subtitle}{\color{gray}\normalsize}
        \makeatletter
        \renewcommand{\maketitle}{{\raggedright{\usekomafont{title}\huge\@title\par}\vspace{1mm}{\usekomafont{subtitle}\@subtitle\par}\vspace{3mm}}}
        \makeatother
        \setkomafont{section}{\color{mint}\Large\bfseries}
        \RedeclareSectionCommand[beforeskip=1.1em,afterskip=0.4em]{section}
        \usepackage{tcolorbox}
        \tcbuselibrary{skins}
        \renewenvironment{quote}{\begin{tcolorbox}[enhanced,before upper=\raggedright,colback=paper,colframe=paper,borderline west={1.2mm}{0mm}{mint},arc=1mm,left=3mm,right=3mm,top=1.5mm,bottom=1.5mm,before skip=1mm,after skip=2.5mm]}{\end{tcolorbox}}
        \setlength{\parindent}{0pt}
        \AtBeginDocument{\raggedright}
        \hyphenpenalty=10000
        \exhyphenpenalty=10000
        \setlength{\parskip}{0.3em}
---

So kommen Sie zu Ihrem ersten Bild: Im Browser **ComfyUI** öffnen (`http://localhost:8188`), über **Templates** die Vorlage **Z-Image-Turbo** laden, den Prompt in das Feld für den **positiven Prompt** eintippen und auf **Run** klicken. Jeder Durchlauf ergibt ein anderes Bild — ein zweiter Versuch lohnt sich.

Die Prompts sind auf Englisch, damit klappt es am zuverlässigsten.

## Bausteine für 3D-taugliche Bilder

Soll aus dem Bild später ein 3D-Modell werden (Vorlage **HY 3D 2.1**), helfen diese Bausteine am Ende des Prompts. Sie stecken in allen Beispielen unten.

| Baustein | Wofür |
|---|---|
| `single object, centered` | **Ein** Objekt pro Bild |
| `plain light grey background` | Einfarbiger Hintergrund |
| `soft studio light, soft shadows` | Gleichmäßiges Licht **mit Schatten** — so erkennt die KI die Form |
| `full view` | Ganzes Objekt sichtbar, nichts abgeschnitten |

Keine Wörter wie *sign*, *label* oder *logo* verwenden — Text im Bild stört bei Bild → 3D.

## Formen und Stile

Ein einziges Stil-Wort verändert das ganze Bild. Einfach austauschen und vergleichen.

> **Low Poly** — kantig aus wenigen Flächen, wie ein frühes Videospiel
>
> Low poly fox figurine sitting, faceted flat-shaded polygons, orange and white, single object, centered, plain light grey background, soft studio light, soft shadows, full view

> **Voxel** — alles aus kleinen Würfeln
>
> Voxel art treasure chest made of small cubes, open lid, gold coins inside, single object, centered, plain light grey background, soft studio light, soft shadows, full view

> **Knete** — sieht aus wie von Hand geformt
>
> Cute snail made of modeling clay, big spiral shell, visible fingerprints, single object, centered, plain light grey background, soft studio light, soft shadows, full view

> **Holzspielzeug** — einfache, runde Formen
>
> Wooden toy steam locomotive, simple rounded shapes, natural wood, single object, centered, plain light grey background, soft studio light, soft shadows, full view

> **Figur im Comic-Stil** — großer Kopf, kleiner Körper
>
> Chibi robot figurine, big round head, tiny body, matte plastic, waving, single object, centered, plain light grey background, soft studio light, soft shadows, full view

## Gemacht für den 3D-Druck

> **Spiral-Vase** — glatte Form, druckt sich gut
>
> Twisted spiral vase, smooth white ceramic, single object, centered, plain light grey background, soft studio light, soft shadows, full view

> **Schachfigur** — eigene Figuren für ein Schachspiel
>
> Chess knight piece shaped like a dragon head, polished dark stone, single object, centered, plain light grey background, soft studio light, soft shadows, full view

## Aus Jülich

> **Kröte** — Jülicher werden auch „Muttkraten“ genannt
>
> comic style, flat colors, Common toad sitting, warty brown skin, golden eyes, single object, centered, plain light grey background, soft studio light, soft shadows, full view

Variante: `Common toad` durch `Low poly toad` ersetzen.

> **Zitadelle** — Festung mit vier spitzen Bastionen
>
> Miniature model of a square Renaissance fortress, four arrow-shaped corner bastions, red brick walls, water moat, small palace in the center, aerial view, single object, plain light grey background, soft studio light, soft shadows, full view

Hier bitte nicht zu viel erwarten: Die KI kennt die Jülicher Zitadelle nicht und erfindet eine Festung, die nur ähnlich aussieht.

> **Hexenturm** — Stadttor mit zwei runden Türmen
>
> Miniature model of a medieval city gate, two round stone towers with pointed roofs, arched gateway in between, single object, centered, plain light grey background, soft studio light, soft shadows, full view

## Wenn etwas nicht klappt

- **Nochmal klicken:** Jeder Durchlauf ergibt ein neues Bild — gleicher Prompt, anderes Ergebnis.
- **Weniger ist mehr:** Lieber wenige klare Wörter als lange Sätze.
- **Stil-Wort wechseln:** *low poly*, *voxel*, *clay*, *wooden toy* oder *plastic figurine* ausprobieren.
- **Etwas fehlt:** Das wichtigste Detail weiter nach vorne im Prompt schreiben.
- **Mehrere Objekte im Bild:** `single object` steht schon drin — sonst das Objekt genauer benennen.
