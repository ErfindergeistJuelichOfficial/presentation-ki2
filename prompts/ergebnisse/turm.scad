// Maße des Turms
turm_radius = 10;
turm_hoehe = 30;
dach_hoehe = 15;

// Farben
turm_farbe = [21/255, 153/255, 137/255]; // #159989
dach_farbe = [249/255, 179/255, 56/255]; // #F9B338

// Turmteil
color(turm_farbe)
cylinder(h = turm_hoehe, r1 = turm_radius, r2 = turm_radius, $fn = 100);

// Kegeldach
translate([0, 0, turm_hoehe])
color(dach_farbe)
cylinder(h = dach_hoehe, r1 = turm_radius, r2 = 0, $fn = 100);
