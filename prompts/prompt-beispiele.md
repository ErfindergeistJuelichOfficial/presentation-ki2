---
title: Prompt-Ideen zum Ausprobieren
subtitle: Einfach eintippen und staunen
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

So kommen Sie zu Ihrem ersten Ergebnis: Im Browser die Weboberfläche **Open WebUI** öffnen, oben links das Modell **qwen3.5:9b** auswählen, Prompt in den Chat eintippen, abschicken, staunen. Die Antworten sind jedes Mal etwas anders — ein zweiter Versuch lohnt sich.

## Kreativ und lustig

> **Gefühle für Gegenstände**
>
> Du bist ein Toaster mit Gefühlen. Erzähle in 6 Sätzen von deinem Montagmorgen.

> **Ein anderer Erzähler**
>
> Erkläre, wie ein 3D-Drucker funktioniert – so, als wärst du ein Pirat. Höchstens 5 Sätze.

> **Ausreden-Generator**
>
> Schreibe 3 kreative Ausreden, warum ich zu spät zum Workshop komme. Je ein Satz, eine davon mit einem 3D-Drucker.

> **Post aus der Zukunft**
>
> Schreibe einen kurzen Brief (5 Sätze) von einem Roboter aus dem Jahr 2126 an die Menschen von heute.

## Mitspielen: Die KI fragt zurück

> **Textabenteuer** — einfach mit 1, 2 oder 3 antworten
>
> Spiele mit mir ein Textabenteuer. Ich bin ein Erfinder, der nachts in einer Werkstatt eingeschlossen ist. Beschreibe die Szene in 4 Sätzen und gib mir 3 Möglichkeiten zur Auswahl.

> **Persönlichkeits-Quiz**
>
> Stell mir 3 Fragen, um herauszufinden, welches Tier am besten zu mir passt. Warte nach jeder Frage auf meine Antwort.

## Erklären lassen

> **Eine Frage, drei Zielgruppen** — so stark verändert die Zielgruppe die Antwort
>
> Erkläre, was künstliche Intelligenz ist – einmal für ein Kindergartenkind, einmal für eine Oma, einmal für einen Informatiker. Je 2 Sätze.

> **Resteküche**
>
> In meinem Kühlschrank sind: 3 Eier, eine halbe Paprika, Feta, ein Rest Reis. Schlage ein Gericht vor, kurz mit Zutaten und 5 Schritten.

## Spiele im Browser

Mit **qwen3.5:9b** schreibt die KI ein komplettes Spiel in etwa einer Minute. Den Code aus der Antwort als `spiel.html` speichern und im Browser öffnen.

> **Breakout**
>
> Erstelle ein Breakout-Spiel als eine einzige HTML-Datei mit Canvas. Steuerung mit der Maus, bunte Steine, Punkte und Leben anzeigen.

> **Memory** — je genauer der Ablauf beschrieben ist, desto besser klappt es
>
> Erstelle ein Memory-Spiel als eine einzige HTML-Datei: 8 Tier-Emoji-Paare (16 Karten), gemischt. Zwei Karten aufdecken; gleiche Emojis bleiben offen, sonst nach 1 Sekunde wieder umdrehen. Zähle die Züge, zeige am Ende „Gewonnen!“ und einen Neustart-Knopf.

> **Snake** — Achtung: Die Schlange läuft sofort los
>
> Baue ein kleines Snake-Spiel als eine einzige HTML-Datei, das direkt im Browser läuft. Steuerung mit den Pfeiltasten, Punktestand anzeigen.

> **Feuerwerk** — kein Spiel, aber ein Hingucker
>
> Erstelle eine HTML-Seite mit schwarzem Hintergrund: Bei jedem Mausklick explodiert an dieser Stelle ein buntes Feuerwerk aus Partikeln. Eine einzige Datei mit Canvas.

## 3D-Modell: Ein Turm mit OpenSCAD

Für OpenSCAD-Code in Open WebUI das Modell **gemma4:12b** wählen (qwen3.5:9b schafft das nicht zuverlässig). Den Code als `turm.scad` speichern, in OpenSCAD öffnen und mit **F5** die Vorschau anzeigen.

> Schreibe kurzen OpenSCAD-Code: ein runder Turm (grün, #159989) mit spitzem Kegeldach (gelb, #F9B338). Alle Maße als Variablen oben mit deutschem Kommentar. Nur der Code.

Danach weiter verfeinern, zum Beispiel: *„Füge oben am Turm Zinnen hinzu.“* oder *„Mache eine Tür in den Turm.“*

## Wenn etwas nicht klappt

- **Genauer beschreiben:** Was soll passieren, wann und in welcher Reihenfolge?
- **Fehler zurückmelden:** Im selben Chat beschreiben, was nicht funktioniert, und um die komplette, korrigierte Datei bitten.
- **Neu anfangen:** Hilft das nicht, einen neuen Chat starten — gleicher Prompt, neue Antwort.
- **Anderes Modell:** Für Code ist ein größeres oder spezialisiertes Modell oft besser.
- **Grenzen kennen:** Kleine Modelle tun sich schwer mit deutschen Reimen, Rätseln und sehr langem Code.
