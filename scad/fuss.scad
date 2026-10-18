// =====================================================================
// tischfuss_rohrkappe
// Zweck: Tischfuss als einseitig geschlossene Kappe zum Aufstecken auf
//        ein Rundrohr mit ca. 35 bis 36 mm Durchmesser.
//        Grundflaeche D-foermig: Halbkreis (D 41 mm) auf der einen Seite,
//        rechteckige, massive Verlaengerung auf der Gegenseite.
//        Innen 12 Klemmrippen (Presspassung) und 4 radiale Bodenrippen
//        als Anschlag fuer das Rohrende.
//
// Masse:
//   Aussenhoehe                      57 mm
//   Aussentiefe (X)                  55 mm
//   Aussenbreite (Y)                 41 mm
//   Bodenstaerke                      3 mm
//   Bohrung                          D 36 mm, koaxial zum Halbkreis
//   Bohrungstiefe                    54 mm (abgeleitet)
//   Wandstaerke Rundseite            2,5 mm (abgeleitet)
//   Verlaengerung ab Bohrungsachse   34,5 mm (abgeleitet)
//   Klemmrippen                      12 Stk, 30 Grad Teilung, 4 mm breit,
//                                    0,5 mm radial, freier Innen-D 35 mm,
//                                    von 10 mm unter Oberkante bis Boden
//                                    (Laenge 44 mm), oben 45-Grad-Anlauf
//   Bodenrippen                      4 Stk, 90 Grad Teilung, 2 mm lang,
//                                    6 mm breit, 11 mm hoch; Ausnahme Rippe zur
//                                    Rechteckseite (+X): 2 mm lang, 8 mm breit,
//                                    20 mm hoch
//   Einfuehrfase Bohrung             0,5 mm x 45 Grad
//   Fase Aussenkante unten           1 mm x 45 Grad
//   Fase Aussenkante oben            0,5 mm x 45 Grad
//
// Koordinaten: Bohrungsachse = Z-Achse, Halbkreis auf -X-Seite,
//              Verlaengerung in +X. Boden liegt auf z = 0.
// Druck: Boden auf dem Druckbett, Oeffnung nach oben, ABS, Prusa Core One.
// =====================================================================

// ---------------- Parameter ----------------
hoehe             = 57;    // Aussenhoehe in mm
tiefe             = 55;    // Aussentiefe inklusive rechteckiger Verlaengerung in mm
breite            = 41;    // Aussenbreite = Durchmesser der Rundseite in mm
boden             = 3;     // Bodenstaerke in mm
bohrung_d         = 36;    // Bohrungsdurchmesser in mm
einfuehr_tiefe    = 10;    // Glatter Bereich ohne Rippen unter der Oberkante in mm
rippe_anzahl      = 12;    // Anzahl der Klemmrippen
rippe_b           = 4;     // Breite einer Klemmrippe in mm
rippe_h           = 0.5;   // Radialer Ueberstand einer Klemmrippe in mm
bodenrippe_anzahl = 4;     // Anzahl der Bodenrippen
bodenrippe_l      = 2;    // Radiale Laenge einer Bodenrippe in mm
bodenrippe_b      = 6;     // Breite einer Bodenrippe in mm
bodenrippe_h      = 11;     // Hoehe einer Bodenrippe in mm
bodenrippe_u_l    = 2;    // Radiale Laenge der Bodenrippe zur Rechteckseite (+X) in mm
bodenrippe_u_b    = 8;     // Breite der Bodenrippe zur Rechteckseite (+X) in mm
bodenrippe_u_h    = 20;    // Hoehe der Bodenrippe zur Rechteckseite (+X) in mm

bohr_fase         = 0.5;   // Einfuehrfase an der Bohrungsoberkante in mm (45 Grad)
fase_unten        = 1;     // Fase der Aussenkante an der Grundflaeche in mm (45 Grad)
fase_oben         = 0.5;   // Fase der Aussenkante an der Oberseite in mm (45 Grad)

einbett           = 0.3;   // Einbettung der Rippen in die Wand in mm
ueberlapp         = 0.01;  // Ueberlappung gegen Kantenberuehrung in mm
eps               = 0.1;   // Ueberstand von Abzugskoerpern in mm

// ---------------- Abgeleitete Masse ----------------
r_aussen       = breite / 2;                 // Radius Rundseite: 20.5 mm
bohrung_r      = bohrung_d / 2;              // Bohrungsradius: 18 mm
verl           = tiefe - r_aussen;           // Verlaengerung ab Achse: 34.5 mm
rippe_r_innen  = bohrung_r - rippe_h;        // Innenradius ueber Klemmrippen: 17.5 mm
rippe_z_oben   = hoehe - einfuehr_tiefe;     // Oberkante Klemmrippen: 47 mm
wand_r         = bohrung_r + einbett;        // Aussenende der Rippen in der Wand

// Pruefung der Fertigungsauflage
assert(rippe_h >= 0.4, "Klemmrippen-Ueberstand muss mindestens 0,4 mm betragen");

// ---------------- Aufloesung ----------------
$fn = 96;

// ---------------- Module ----------------

// 2D-Grundflaeche in D-Form: Halbkreis um den Ursprung plus Rechteck in +X
module d_form() {
    union() {
        circle(r = r_aussen);
        translate([0, -r_aussen]) square([verl, breite]);
    }
}

// Aussenkoerper mit Fasen unten und oben (D-Form ist konvex, daher hull exakt)
module aussenkoerper() {
    hull() {
        // untere Fasenkante
        linear_extrude(height = ueberlapp)
            offset(delta = -fase_unten) d_form();
        // voller Querschnitt
        translate([0, 0, fase_unten])
            linear_extrude(height = hoehe - fase_unten - fase_oben)
                d_form();
        // obere Fasenkante
        translate([0, 0, hoehe - ueberlapp])
            linear_extrude(height = ueberlapp)
                offset(delta = -fase_oben) d_form();
    }
}

// Bohrung von oben bis auf den Boden, mit Einfuehrfase an der Oberkante
module bohrung() {
    translate([0, 0, boden])
        cylinder(h = hoehe - boden + eps, r = bohrung_r);
    translate([0, 0, hoehe - bohr_fase])
        cylinder(h = bohr_fase + eps, r1 = bohrung_r, r2 = bohrung_r + bohr_fase + eps);
}

// Eine Klemmrippe in +X-Richtung, Profil in der XZ-Ebene mit 45-Grad-Anlauf oben
module klemmrippe() {
    rotate([90, 0, 0])
        linear_extrude(height = rippe_b, center = true)
            polygon([
                [rippe_r_innen, boden - ueberlapp],
                [wand_r,        boden - ueberlapp],
                [wand_r,        rippe_z_oben],
                [bohrung_r,     rippe_z_oben],
                [rippe_r_innen, rippe_z_oben - rippe_h]
            ]);
}

// Alle Klemmrippen gleichmaessig verteilt
module klemmrippen() {
    for (i = [0 : rippe_anzahl - 1])
        rotate([0, 0, i * 360 / rippe_anzahl])
            klemmrippe();
}

// Eine Bodenrippe in +X-Richtung, von der Bohrungswand radial nach innen
module bodenrippe(l, b, h) {
    r_i = bohrung_r - l;   // Innenende der Rippe (negativ = ueber die Achse hinaus)
    translate([r_i, -b / 2, boden - ueberlapp])
        cube([wand_r - r_i, b, h + ueberlapp]);
}

// Alle Bodenrippen gleichmaessig verteilt; die zur Rechteckseite (+X, 0 Grad) ist groesser
module bodenrippen() {
    for (i = [0 : bodenrippe_anzahl - 1]) {
        w = i * 360 / bodenrippe_anzahl;
        rotate([0, 0, w])
            if (w == 0)   bodenrippe(bodenrippe_u_l, bodenrippe_u_b, bodenrippe_u_h);
            else          bodenrippe(bodenrippe_l, bodenrippe_b, bodenrippe_h);
    }
}

// Hauptmodul: Kappe mit Bohrung, Klemmrippen und Bodenrippen
module tischfuss_rohrkappe() {
    union() {
        difference() {
            aussenkoerper();
            bohrung();
        }
        klemmrippen();
        bodenrippen();
    }
}

// ---------------- Aufruf ----------------
tischfuss_rohrkappe();