include <config.scad>


// BRAÇO AERODINÂMICO


module perfil_braco(){

    linear_extrude(height=8)

    polygon([

        [0,-8],

        [20,-10],

        [55,-8],

        [78,-5],

        [92,-2],

        [96,0],

        [92,2],

        [78,5],

        [55,8],

        [20,10],

        [0,8]

    ]);

}

//////////////

module ponta_motor(){

    translate([92,0,4])

    union(){

    color([0.15,0.55,0.20])

    difference(){

    cylinder(h=4,r=17,$fn=120);

    translate([0,0,-1])

    cylinder(h=6,r=15,$fn=120);

}

    color([0.12,0.12,0.12])

    translate([0,0,8])

    cylinder(h=10,r=10,$fn=80);

    }
}

/////////////

module braco(){

    color([0.18,0.18,0.20])

    union(){

 // Braço

     hull(){

     translate([28,0,3])
     sphere(6);

     translate([92,0,4])
     scale([1.3,1,0.8])
     sphere(6);

        }

// Carenagem

     hull(){

     translate([18,0,6])
     sphere(8);

     translate([35,0,5])
     sphere(6);

        }

    }

    ponta_motor();

}

//////

module estrutura(){

    for(i=[45,135,225,315]){

       rotate([0,0,i])

         braco();

    }

}