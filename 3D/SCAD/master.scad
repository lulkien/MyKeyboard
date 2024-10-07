use <top.scad>
use <bottom.scad>
use <side_bar.scad>

rotate([0, 0, 0]) union() {
    translate([0, 0, 0]) bottom_piece();
    %translate([0, 0, 12.5]) top_piece();
    #translate([-148.65, 0, 3]) rotate([0, 0, -90]) side_bar();
    #translate([148.65, 0, 3]) rotate([0, 0, 90]) side_bar();
}


// export
//bottom_piece();

//rotate([180, 0, 0]) top_piece();

//rotate([180, 0, 0]) side_bar();