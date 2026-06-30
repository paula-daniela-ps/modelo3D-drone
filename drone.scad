include <config.scad>

include <casco.scad>
include <bracos.scad>
include <motores.scad>
include <helices.scad>
include <camera.scad>
include <detalhes.scad>
include <trem_pouso.scad>

casco();

estrutura();

tampa_amazonica();

logo();

leds();

camera();

trem();

for(i=[45:90:315]){

    rotate([0,0,i]){

        translate([92,0,0])
            motor();

        translate([92,0,0])
            helice();

    }

}