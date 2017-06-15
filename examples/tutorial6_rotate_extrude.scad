module my2d(){
    translate([10,0,0]){
    difference(){ 
     square([10,20],center=true);
        translate([2,0,0]){
         circle(4);
        }
        }
    }
    } 
    
my2d();

translate([40,0,0]){    
rotate_extrude(){ //x軸回りに90度傾けてから、ｚ軸回りに360度押し出しながら回す
    my2d();
    }
    
}
 translate([80,0,0]){    
rotate_extrude($fn=100){
    my2d();
    }
    
}
 