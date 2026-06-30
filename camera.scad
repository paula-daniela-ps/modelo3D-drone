include <config.scad>

// LENTE


module lente(){

    color([0.10,0.20,0.90])

    rotate([90,0,0])

    cylinder(h=2,r=3,$fn=60);

}


// GIMBAL


module camera(){

    // Posição da câmera
    translate([0,22,-3]){

    // Suporte superior
    color([0.45,0.45,0.45])

     hull(){

    translate([-5,0,0]) sphere(1.4,$fn=40);
    translate([5,0,0]) sphere(1.4,$fn=40);

        }

    // Braço esquerdo
        hull(){

    translate([-5,0,0]) sphere(1,$fn=30);
    translate([-4,0,-6]) sphere(1,$fn=30);

        }

    // Braço direito
     hull(){

    translate([5,0,0]) sphere(1,$fn=30);
    translate([4,0,-6]) sphere(1,$fn=30);

        }

    // Corpo da câmera
    color([0.08,0.08,0.08])

    translate([0,0,-9])

    cube([10,8,8],center=true);

    // Lente
    color([0.12,0.30,0.95])

    translate([0,5,-9])

    lente();

    // Detalhe superior
    color([0.35,0.35,0.35])

    translate([0,0,-4])

    sphere(1.5,$fn=40);

    }

}