include <config.scad>

// PÁ AERODINÂMICA


module pa(){

    color([0.86,0.86,0.86])

    rotate([8,-12,0])

    hull(){

    translate([2,0,0])

    scale([1.3,1,0.6])

    sphere(1.2,$fn=40);

    translate([18,0,0])

    scale([3.5,0.35,0.18])

    sphere(2.6,$fn=40);

     translate([38,0,0])

     scale([5.2,0.10,0.05])

     sphere(2.2,$fn=40);

    }

}

// HÉLICE


module helice(){

    translate([0,0,12]){

     for(i=[0:90:270]){

     rotate([0,0,i + 360*$t])

       pa();

        }

// Cubo central

     color([0.18,0.18,0.18])

     cylinder(h=2,r=4,$fn=80);

    }

}