// Parameter
hoehe      = 50;  // Höhe des Turms
radius     = 10;  // Radius des Turms
dach_hoehe = 20;  // Höhe des Dachs
ueberstand = 3;   // So weit steht das Dach über

// Turm (grün)
color("#159989")
  cylinder(h = hoehe, r = radius);

// Dach: Kegel (gelb)
color("#F9B338")
  translate([0, 0, hoehe])
    cylinder(h = dach_hoehe, r1 = radius + ueberstand, r2 = 0);
