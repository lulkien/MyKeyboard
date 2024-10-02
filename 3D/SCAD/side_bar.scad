union() {
    // slots
    translate([0, 1, 3.5]) difference() {
        translate([0, 0, -3.5]) cube([154.4, 2, 9], center = true);

        // plate slot
        translate([0, 0, -0.75]) cube([152.4, 3, 1.5], center = true);

        // pcb slot
        translate([0, 0, 0.8 - 1.6 - 5]) cube([152.4, 3, 1.6], center = true);
    }

    // side bar
    translate([0, -1, -0.5]) cube([160.4, 2, 10], center = true);
}

//
//Compile
//Export STL