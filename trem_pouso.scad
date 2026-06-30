include <config.scad>


// PERNA

module perna(){

    color([0.18,0.18,0.18])

    hull(){

     translate([0,0,0])
     sphere(r=2,$fn=40);

     translate([0,0,-18])
     sphere(r=2,$fn=40);

    }

}

///////////////

module pe(){

    color([0.08,0.08,0.08])

    hull(){

    translate([-8,0,-18])
    sphere(r=1.5);

     translate([8,0,-18])
     sphere(r=1.5);

    }

}

////////

module trem(){

    color([0.15,0.15,0.15])

    mirror([1,0,0]){

    hull(){

    translate([22,12,-15])

    sphere(2);

    translate([22,-12,-15])

    sphere(2);

        }

    }

    hull(){

    translate([22,12,-15])

    sphere(2);

    translate([22,-12,-15])

    sphere(2);

    }

}