include <config.scad>

// TAMPA AMAZÔNICA


module tampa_amazonica(){

   // Base da tampa
    difference(){

    color([0.18,0.62,0.25])

    translate([0,0,16])

    cylinder(h=2,r=32,$fn=120);

    // Recorte da vitória-régia
     translate([18,0,15])

    cube([24,3,5],center=true);
    }

    // Rio
    color([0.10,0.45,0.90])

    translate([-10,-2,18.2])
    rotate([0,0,25])
    cube([22,0.6,0.3],center=true);

    translate([4,-1,18.2])
    rotate([0,0,-20])
    cube([16,0.6,0.3],center=true);

    // Medalhão central
    color([0.15,0.45,0.18])

    translate([0,0,18])

    cylinder(h=0.8,r=9,$fn=80);

    // Nervuras (não atravessam o medalhão)
    color([0.95,0.82,0.15])

    for(i=[0:15:345]){

    rotate([0,0,i])

    difference(){

    hull(){

    translate([8,0,18])
    sphere(0.35,$fn=20);

    translate([24,0,18])

    sphere(0.15,$fn=20);

            }

    translate([0,0,17])

    cylinder(h=3,r=8.5,$fn=80);

        }

    }

}


// LOGO

module logo(){

    color("white")

    translate([0,0,19])

    linear_extrude(height=0.5)

     text(
          "YBYTU X-1",
          size=3,
          halign="center",
          valign="center",
          font="Liberation Sans:style=Bold"
        );

}

// LEDS


module leds(){

    // LED frontal
    color([0,0,1])

    translate([0,42,10])

    sphere(r=2,$fn=40);

    // LED traseiro
    color([1,0,0])

    translate([0,-42,10])

    sphere(r=2,$fn=40);

}