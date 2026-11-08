---
title: QR-Code zur Präsentation
format:
  pdf:
    documentclass: scrartcl
    papersize: a4
    pdf-engine: pdflatex
    geometry:
      - top=18mm
      - bottom=18mm
      - left=20mm
      - right=20mm
    include-in-header:
      text: |
        \usepackage{helvet}
        \renewcommand{\familydefault}{\sfdefault}
        \usepackage{xcolor}
        \definecolor{mint}{HTML}{159989}
        \definecolor{amber}{HTML}{F9B338}
        \usepackage{graphicx}
        \pagestyle{empty}
        \renewcommand{\maketitle}{}
        \setlength{\parindent}{0pt}
---

```{=latex}
\begin{center}
\includegraphics[height=32mm]{../verein/logo.png}

\vspace{8mm}

{\fontsize{46}{52}\selectfont\bfseries\color{mint} KI to 3D\par}

\vspace{4mm}

{\Large\color{gray} Mit KI zum eigenen 3D-Druck\par}

\vspace{8mm}

\includegraphics[width=115mm]{../qr-codes/praesentation.png}

\vspace{6mm}

{\LARGE\bfseries Die Präsentation zum Nachlesen\par}

\vspace{4mm}

{\Large\color{mint}\ttfamily presentations.erfindergeist.org/ki2\par}

\vfill

{\large\color{gray} Erfindergeist Jülich e.V. \,·\, erfindergeist.org\par}
\end{center}
```
