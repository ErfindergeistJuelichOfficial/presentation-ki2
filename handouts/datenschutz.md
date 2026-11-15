---
title: Einwilligungserklärung zur Verarbeitung personenbezogener Daten
subtitle: Teilnehmerliste und Fotoveröffentlichung
format:
  pdf:
    documentclass: scrartcl
    papersize: a4
    pdf-engine: pdflatex
    geometry:
      - top=30mm
      - bottom=12mm
      - left=20mm
      - right=20mm
      - headheight=20mm
      - headsep=5mm
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
        \thispagestyle{fancy}
        \setkomafont{title}{\color{mint}\bfseries}
        \setkomafont{subtitle}{\color{gray}\normalsize}
        \makeatletter
        \renewcommand{\maketitle}{{\raggedright{\usekomafont{title}\LARGE\@title\par}\vspace{1mm}{\usekomafont{subtitle}\@subtitle\par}\vspace{2mm}}}
        \makeatother
        \setkomafont{section}{\color{mint}\large\bfseries}
        \setkomafont{subsection}{\color{mint}\large\bfseries}
        \RedeclareSectionCommand[beforeskip=0.9em,afterskip=0.3em]{section}
        \RedeclareSectionCommand[beforeskip=0.7em,afterskip=0.2em]{subsection}
        \usepackage{tcolorbox}
        \tcbuselibrary{skins}
        \renewenvironment{quote}{\begin{tcolorbox}[enhanced,before upper=\raggedright,colback=paper,colframe=paper,borderline west={1.2mm}{0mm}{mint},arc=1mm,left=3mm,right=3mm,top=1.5mm,bottom=1.5mm,before skip=1mm,after skip=1.5mm]}{\end{tcolorbox}}
        \usepackage{enumitem}
        \setlist[itemize]{itemsep=0pt,topsep=2pt}
        \setlength{\parindent}{0pt}
        \newcommand{\kbox}{\raisebox{-0.25ex}{\setlength{\fboxsep}{0pt}\fbox{\rule{0pt}{0.85em}\hspace{0.85em}}}\hspace{0.4em}}
        \AtBeginDocument{\raggedright}
        \hyphenpenalty=10000
        \exhyphenpenalty=10000
        \setlength{\parskip}{0.2em}
---

> **Verantwortliche Stelle:**\
> Erfindergeist Jülich e.V.\
> Pfarrer-Engels-Straße, 52428 Jülich\
> vorstand@erfindergeist.org

*Zutreffendes bitte ankreuzen.*

## 1. Verarbeitung der Teilnehmerdaten

`\kbox`{=latex}**Ich willige ein**, dass meine personenbezogenen Daten (**Name, Vorname**) zur Erstellung einer **Teilnehmerliste** im Rahmen der Veranstaltung **„KI to 3D“ am 21.11.2026** verarbeitet werden.
Die Teilnehmerliste wird zur **internen Dokumentation** verwendet.

## 2. Foto- und Videoaufnahmen

`\kbox`{=latex}**Ich willige ein**, dass im Rahmen der genannten Veranstaltung **Foto- und ggf. Videoaufnahmen** von mir angefertigt werden dürfen.
Diese Aufnahmen dürfen von Erfindergeist Jülich e.V. für **Presse- und Öffentlichkeitsarbeit** verwendet und auf folgenden Kanälen **veröffentlicht** werden:

- https://www.erfindergeist.org (https://galerie.erfindergeist.org)
- https://www.instagram.com/erfindergeistjuelich/
- https://www.facebook.com/erfindergeistjuelich
- https://social.erfindergeist.org/@verein

\textcolor{gray}{\small Hinweis: Instagram und Facebook sind Dienste der Meta Platforms Inc.; dabei können Daten in die USA übertragen werden. Bereits veröffentlichte Aufnahmen lassen sich nach einem Widerruf unter Umständen nicht mehr vollständig aus dem Internet entfernen.}

## 3. Zweck, Rechtsgrundlage und Speicherdauer

Die Verarbeitung erfolgt auf Grundlage meiner Einwilligung gemäß **Art. 6 Abs. 1 lit. a DSGVO** zu den oben genannten Zwecken.
Die Daten werden **bis zum Widerruf** der Einwilligung gespeichert.

## 4. Widerruf der Einwilligung

Ich kann diese Einwilligung **jederzeit mit Wirkung für die Zukunft widerrufen**, ohne dass mir daraus **Nachteile** entstehen.
Der Widerruf ist zu richten an:
**vorstand@erfindergeist.org**

## 5. Hinweise zum Datenschutz

Weitere Informationen zur Verarbeitung personenbezogener Daten und zu meinen Rechten (Auskunft, Berichtigung, Löschung, Einschränkung der Verarbeitung, Widerspruch, Beschwerderecht bei einer Aufsichtsbehörde) finde ich in der Datenschutzerklärung unter:
**https://erfindergeist.org/datenschutz/**

```{=latex}
\vfill
\noindent
\begin{minipage}[t]{0.56\textwidth}
\textbf{Name, Vorname:}\\[8mm]
\rule{\linewidth}{0.4pt}
\end{minipage}\hfill
\begin{minipage}[t]{0.38\textwidth}
\textbf{Ort, Datum:}\\[8mm]
\rule{\linewidth}{0.4pt}
\end{minipage}

\vspace{5mm}
\noindent
\begin{minipage}[t]{0.47\textwidth}
\textbf{Unterschrift:}\\[8mm]
\rule{\linewidth}{0.4pt}
\end{minipage}\hfill
\begin{minipage}[t]{0.47\textwidth}
\textbf{Unterschrift Erziehungsberechtigte/r}\\
{\small (nur bei Minderjährigen)}\\[3mm]
\rule{\linewidth}{0.4pt}
\end{minipage}
```
