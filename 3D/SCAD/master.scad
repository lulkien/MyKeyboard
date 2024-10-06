use <top.scad>
use <bottom.scad>
use <side_bar.scad>

// [0, 0, 0]
translate([0, 0, 0]) bottom_piece();

// [0, 0, 12.5]
translate([0, 0, 12.5]) top_piece();

// [-148.65, 0, 3]
//translate([-148.65, 0, 3]) rotate([180, 0, 90]) side_bar();

// [148.65, 0, 3]
//translate([180, 0, 25]) rotate([0, 0, 90]) side_bar();