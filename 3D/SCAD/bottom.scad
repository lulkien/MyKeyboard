
difference() {
    cube([303.3, 166.4, 15], center = true);

    translate([0, 0, 3.5]) cube([400, 154.4, 10], center = true);
    
    
    translate([148.65, 0, 3]) cube([2, 160.4, 11], center = true);
    translate([-148.65, 0, 3]) cube([2, 160.4, 11], center = true);
}
