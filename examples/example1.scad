// LetterBlock.scad - Basic usage of text() and linear_extrude()

// Module instantiation
difference(){
LetterBlock("A");
Randompipe(20);
};
// Module definition.
// size=30 defines an optional parameter with a default value.
module LetterBlock(letter, size=30) {

            // convexity is needed for correct preview
            // since characters can be highly concave
               translate([0,0,-40])
            linear_extrude(height=40, twist=70,scale=10,convexity=4,slices = 100)
                translate([-2.5,-2.5])
                square(size=5);

}


module Randompipe(num){
     union() {
    for (i=[1:num])
        translate([rands(-40,40,1)[0],rands(-40,40,1)[0],-41]){
        cylinder(r=rands(3,10,1)[0],h=35);
        }
    }
    }
echo(version=version());
// Written by Marius Kintel <marius@kintel.net>
//
// To the extent possible under law, the author(s) have dedicated all
// copyright and related and neighboring rights to this software to the
// public domain worldwide. This software is distributed without any
// warranty.
//
// You should have received a copy of the CC0 Public Domain
// Dedication along with this software.
// If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.
