
translate([0, 0, 1.5]) difference() {
    cube([303.3, 166.4, 15], center = true);

    translate([0, 0, 3.5]) cube([400, 154.4, 10], center = true);
    
    
    translate([148.65, 0, 3]) cube([2, 160.4, 11], center = true);
    translate([-148.65, 0, 3]) cube([2, 160.4, 11], center = true);

    // usb c socket
    translate([-123.1, 80, -0.1+3]) rotate([90, 90, 0]) hull() {
        $fn=200;
        translate([0, 3.25, -10]) cylinder(30, d1=2.7, d2=2.7);
        translate([0, -3.25, -10]) cylinder(30, d1=2.7, d2=2.7);
    }

}

