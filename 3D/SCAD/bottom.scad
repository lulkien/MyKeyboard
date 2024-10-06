module bottom_piece() {
    difference() {
        union() {
            difference() {
                hull() {
                    $fn = 200;
                    border_rad = 1;
                    width = 303.3;
                    height = 168.4;
                    depth = 15;
                    
                    pos_cylinder_x = width / 2 - border_rad;
                    pos_cylinder_y = height / 2 - border_rad; 
                    
                    position = [
                        [pos_cylinder_x, pos_cylinder_y, 0],
                        [-pos_cylinder_x, pos_cylinder_y, 0],
                        [pos_cylinder_x, -pos_cylinder_y, 0],
                        [-pos_cylinder_x, -pos_cylinder_y, 0],
                    ];
                    
                    for (pos = position) {
                        translate(pos)  cylinder(h = depth, r = border_rad, center = true);
                    }
                }
                
                // main cut
                translate([0, 0, 3.5]) cube([400, 154.4, 10], center = true);
                
                // Side cut
                translate([148.65, 0, 3]) cube([2, 160.4, 11], center = true);
                translate([-148.65, 0, 3]) cube([2, 160.4, 11], center = true);
            }
            
            translate([0, 80.225, 2.5]) cube([291.3, 7.95, 10], center = true);
        }
        
        // Screw holes
        // In bottom plate thread: 8mm
        // In top plate: 4mm
        
        screw_positions = [
            [90, 80.7, -1.5],
            [-90, 80.7, -1.5],
            [90, -80.7, -1.5],
            [-90, -80.7, -1.5],
        ];
        
        for (screw_pos = screw_positions) {
            translate(screw_pos) union() {
                $fn = 200;
                cylinder(h = 10, d = 2.51);
                translate([0, 0, -9]) cylinder(h = 10, d = 4.43);
            }
        }
        
        // Top piece mounting point
        translate([0, 80.7, 8]) cube([40, 2, 5], center = true);
        translate([0, -80.7, 8]) cube([40, 2, 5], center = true);
        
        // USB C socket
        translate([-123.1, 77.5, 2.9]) rotate([90, 90, 0]) union() {
            hull() {
                $fn=200;
                translate([0, 3.25, -10]) cylinder(30, d1=2.7, d2=2.7);
                translate([0, -3.25, -10]) cylinder(30, d1=2.7, d2=2.7);
            }
    
            hull() {
                $fn=200;
                translate([0, 3.25, -10]) cylinder(10, d1=7, d2=7);
                translate([0, -3.25, -10]) cylinder(10, d1=7, d2=7);
            }
        }
    }
}