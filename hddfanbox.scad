// Replacement fan mount for HDD enclosure
// For printing, units should be mm !!!

$fn=50;

use <roundedcube.scad>

// Main frame
difference() {
    roundedcube([69,68,25],false,1,"z");
    translate([4.5,4,-1]){
        cube([60,60,27]);
    }
    
    // Cable notch
    hull(){
    translate([15,5,18]){
        rotate([90,0,0]){
                cylinder(h=6,r=1.5);
            }
        }
    translate([15,5,30]){
        rotate([90,0,0]){
                cylinder(h=6,r=1.5);
            }
        }
    }
    
    // Connection screw notches
    translate([20,-5,19.5]){
        cube([6,10,6]);
        }
    translate([23,5,20]){
        rotate([90,0,0]){
                cylinder(h=6,r=1.5);
            }
        }
    translate([23,1,20]){
        rotate([-90,0,0]){
                cylinder(h=3.1,r1=1,r2=3);
            }
        }
    translate([44,-5,19.5]){
        cube([6,10,6]);
        }
    translate([47,5,20]){
        rotate([90,0,0]){
                cylinder(h=6,r=1.5);
            }
        }
    translate([47,1,20]){
        rotate([-90,0,0]){
                cylinder(h=3.1,r1=1,r2=3);
            }
        }
}




// Bottom tabs
translate([5,-7,10]){
    roundedcube([1,9,10],false,0.5,"x");
}

translate([63,-7,10]){
    roundedcube([1,9,10],false,0.5,"x");
}

translate([27,-7,6]){
    roundedcube([15,9,1],false,0.5,"z");
}

// Top tabs
difference(){
    translate([2,68,0]){
        cube([18,13,3]);
        polyhedron(points=[ [-2,0,0],[1,0,0],[1,13,0],[0,13,0], 
                            [-2,0,13],[1,0,13],[1,13,5],[0,13,5]],
                   faces=[ [0,1,2,3], [4,5,1,0], [7,6,5,4],
                           [5,6,2,1], [6,7,3,2], [7,4,0,3]]);
        polyhedron(points=[ [16,0,0],[18,0,0],[18,13,0],[16,13,0], 
                            [16,0,13],[18,0,13],[18,13,5],[16,13,5]],
                   faces=[ [0,1,2,3], [4,5,1,0], [7,6,5,4],
                           [5,6,2,1], [6,7,3,2], [7,4,0,3]]);
    }
    // HDD screw notch
    translate([12,71,-2]){
        hull(){
            cylinder(h=10,r=2);
            translate([0,5,0]){
                cylinder(h=10,r=2);
            }
        }
    }
}



difference(){
    translate([35,68,0]){
        cube([18,13,3]);
        polyhedron(points=[ [-2,0,0],[1,0,0],[1,13,0],[-2,13,0], 
                            [-2,0,13],[1,0,13],[1,13,5],[-2            ,13,5]],
                   faces=[ [0,1,2,3], [4,5,1,0], [7,6,5,4],
                           [5,6,2,1], [6,7,3,2], [7,4,0,3]]);
        polyhedron(points=[ [16,0,0],[18,0,0],[18,13,0],[16,13,0], 
                            [16,0,13],[18,0,13],[18,13,5],[16,13,5]],
                   faces=[ [0,1,2,3], [4,5,1,0], [7,6,5,4],
                           [5,6,2,1], [6,7,3,2], [7,4,0,3]]);
    }
    // HDD screw notch
    translate([43,71,-2]){
            hull(){
                cylinder(h=10,r=2);
                translate([0,5,0]){
                    cylinder(h=10,r=2);
                }
            }
        }
    }



