include <config.scad>

// MOTOR BRUSHLESS


module aletas(){

    color([0.20,0.20,0.20])

    for(i=[0:30:330]){

        rotate([0,0,i])

        translate([8,0,5])

            cube([2,1,8],center=true);

    }

}

//////////////

module eixo(){

    color([0.75,0.75,0.75])

    cylinder(h=4,r=2,$fn=50);


// Parafuso superior

color([0.85,0.85,0.85])

translate([0,0,13])

    sphere(1,$fn=30);
}
///////////

module motor(){

    color([0.18,0.18,0.18])

    union(){

    cylinder(h=9,r=9,$fn=100);

    translate([0,0,9])

    cylinder(h=2,r=8,$fn=100);

    aletas();

    translate([0,0,11])

    eixo();

// Tampa superior

    color([0.35,0.35,0.35])

    translate([0,0,11])

    cylinder(h=1.5,r1=5,r2=4,$fn=80);

    }

}