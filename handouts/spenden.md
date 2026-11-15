---
title: Spendenempfehlung
subtitle: Gefällt dir etwas? Nimm es gegen eine Spende mit.
format:
  pdf:
    documentclass: scrartcl
    papersize: a4
    pdf-engine: pdflatex
    geometry:
      - top=34mm
      - bottom=16mm
      - left=20mm
      - right=20mm
      - headheight=20mm
      - headsep=6mm
    fontsize: 11pt
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
        \renewcommand{\maketitle}{{\raggedright{\usekomafont{title}\huge\@title\par}\vspace{1mm}{\usekomafont{subtitle}\@subtitle\par}\vspace{4mm}}}
        \makeatother
        \setkomafont{section}{\color{mint}\Large\bfseries}
        \setkomafont{subsection}{\color{mint}\Large\bfseries}
        \RedeclareSectionCommand[beforeskip=1.2em,afterskip=0.5em]{section}
        \RedeclareSectionCommand[beforeskip=1.2em,afterskip=0.5em]{subsection}
        \usepackage{tcolorbox}
        \tcbuselibrary{skins}
        \usepackage{array}
        \setlength{\parindent}{0pt}
        \AtBeginDocument{\raggedright}
        \hyphenpenalty=10000
        \exhyphenpenalty=10000
        \setlength{\parskip}{0.3em}
        \newcommand{\spende}[3]{%
          \begin{tcolorbox}[enhanced,colback=paper,colframe=paper,borderline west={1.2mm}{0mm}{mint},arc=1mm,left=4mm,right=4mm,top=2.5mm,bottom=2.5mm,before skip=0mm,after skip=2.5mm]
          {\Large\bfseries #1}\hfill{\LARGE\bfseries\color{mint}#3}\\[0.5mm]
          {\color{gray}#2}
          \end{tcolorbox}}
---

## Unsere Ausstellungsstücke

Die Beträge sind eine **Empfehlung** – jede Spende hilft.

```{=latex}
\vspace{3mm}
\spende{Weihnachtsbaum}{Sperrholz}{8 €}
\spende{Weihnachtsbaum}{Leimholz (dicker)}{12 €}
\spende{Hexenturm}{Weiß, Magenta, Himmelblau}{5 €}
\spende{Hexenturm}{Braun, Birche – mit echtem Holzanteil}{9 €}
```

## Hilf uns

```{=latex}
\noindent
\begin{minipage}[t]{0.60\textwidth}
\raggedright
\textbf{Jeder Beitrag zählt} – Erfindergeist finanziert sich ausschließlich durch Mitgliedsbeiträge und Spenden.

\vspace{3mm}
\begin{tabular}{@{}>{\bfseries\color{mint}}l l@{}}
Miete        & Räume für Werkstatt, Workshops und Treffen \\[1mm]
Werkzeug     & Vom Schraubendreher bis zum Messschieber \\[1mm]
Maschinen    & 3D-Drucker, CNC und KI-Workstation \\[1mm]
Repair Café  & Ersatzteile und Material zum Reparieren \\
\end{tabular}
\end{minipage}\hfill
\begin{minipage}[t]{0.33\textwidth}
\centering
\vspace{-2mm}
\includegraphics[width=0.85\linewidth]{../qr-codes/linktree.png}\\[1mm]
{\bfseries Jetzt spenden}\\
Spendenkonto und PayPal\\
{\small\color{mint} linktree.erfindergeist.org}
\end{minipage}

\vfill
\begin{center}
{\Large\bfseries\color{mint} Danke an alle, die unsere Arbeit möglich machen!}
\end{center}
```
