module side_bar() {    
    union() {
        // slots
        translate([0, 0, 3.5]) difference() {
            translate([0, 0, -3.5]) cube([154.4, 6, 9], center = true);
    
            // plate slot
            translate([0, 2.5, -0.75]) cube([152.4, 5, 1.5], center = true);
    
            // pcb slot
            translate([0, 2.5, 0.8 - 1.6 - 5]) cube([152.4, 5, 1.6], center = true);
        }
    
        // side bar
//        translate([0, 0, -0.5]) cube([160.4, 2, 10], center = true);
        translate([0, 0, -0.5]) hull() {
            $fn = 200;
            translate([79, 0, 0]) cylinder(h = 10, r = 1, center = true);
            translate([-79, 0, 0]) cylinder(h = 10, r = 1, center = true);
        }
    }
}