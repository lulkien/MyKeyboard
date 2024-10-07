module top_piece() {
    union() {
        difference() {
            // Main plate
            union() {
                hull() {
                    $fn = 200;
                    border_rad = 3;
                    width = 303.3;
                    height = 168.4;
                    depth = 10;
                    
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
                
                // Mounting pivots
                mounting_positions = [
                    [0, 80.7, -5.5],
                    [0, -80.7, -5.5],
                ];
                
                for (mnt_pos = mounting_positions) {
                    translate(mnt_pos) hull() {
                        $fn = 200;
                        translate([-18.95, 0, 0]) cylinder(h = 2, r = 1, center = true);
                        translate([18.95, 0, 0]) cylinder(h = 2, r = 1, center = true);
                    }
                }
            }
        
            // Main cut
            translate([0, -(19.05 - 3.76), 0]) hull() {
                $fn = 200;
                border_rad = 2;
                width = 286;
                height = 116.3;
                depth = 20;
                
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
            
            // Controller cut
            translate([0, 61.55, -2.5]) hull() {
                $fn = 200;
                border_rad = 2;
                width = 286;
                height = 30.32;
                depth = 7;
                
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
            
            // Screw socket
            screw_positions = [
                [90, 80.7, -5.1],
                [-90, 80.7, -5.1],
                [90, -80.7, -5.1],
                [-90, -80.7, -5.1],
            ];
            
            for (screw_pos = screw_positions) {
                translate(screw_pos) union() {
                    $fn = 200;
                    cylinder(h = 5.3, d = 3.7);
                }
            }
        }
        
        difference() {
            translate([0, -(19.05 - 3.76), -3.4]) hull() {
                $fn = 200;
                border_rad = 2;
                width = 290;
                height = 122;
                depth = 5;
                
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
            
            translate([0, -(19.05 - 3.76), 0]) hull() {
                $fn = 200;
                border_rad = 2;
                width = 286;
                height = 116.3;
                depth = 20;
                
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
        }
    }
}

top_piece();