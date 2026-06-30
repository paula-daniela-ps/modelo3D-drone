include <config.scad>


// CASCO SUPERIOR


module casco_superior(){

color([0.10,0.36,0.18])

linear_extrude(height=16,scale=0.78)

offset(r=4)

polygon([

[-60,0],
[-55,18],
[-42,30],
[-18,40],
[18,40],
[42,30],
[55,18],
[60,0],
[55,-18],
[42,-30],
[18,-40],
[-18,-40],
[-42,-30],
[-55,-18]

]);
    translate([28,18,10])

    cube([8,2,5],
    center=true);

    translate([-28,18,10])

    cube([8,2,5],
    center=true);

}

///////////////

module casco_inferior(){

color([0.08,0.30,0.15])

translate([0,0,-5])

linear_extrude(height=8,scale=1.08)

offset(r=3)

polygon([

[-58,0],
[-50,16],
[-38,26],
[-16,34],
[16,34],
[38,26],
[50,16],
[58,0],
[50,-16],
[38,-26],
[16,-34],
[-16,-34],
[-38,-26],
[-50,-16]

]);

}

//////////

module tampa(){

color([0.20,0.65,0.28])

translate([0,0,16])

linear_extrude(height=2)

offset(r=2)

polygon([

[-36,0],
[-30,12],
[-16,20],
[0,24],
[16,20],
[30,12],
[36,0],
[30,-12],
[16,-20],
[0,-24],
[-16,-20],
[-30,-12]

]);

}

////////////////

module casco(){

    union(){

        casco_superior();

        casco_inferior();

    }

}