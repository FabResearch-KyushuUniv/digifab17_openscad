//example2 by Matsuura Tomoya.
//レンダリングに7分ぐらいかかります
translate([0,-15,19]){
rotate([90,0,0]){
cylinder(7,1,1);

}
}
translate([0,20,19]){
rotate([90,0,0]){
cylinder(7,1,1);
}
}
translate([15,0,23]){
rotate([0,90,0]){
cylinder(7,1,1);
}
}

translate([-22,0,20]){
rotate([0,90,0]){
cylinder(7,1,1);
}
}

difference(){
translate([-22,-22,0]){cube([44,44,36]); 
}
translate([-20,-20,-20]){cube([40,40,90]); 
}
}

translate([-18,-18,0]){
 union(){
      for(i=[0:36]) {
    for(j=[0:36]) {
      translate( [i*0.99, j*0.99, 11+10*sin(9*i)*cos(9*j)+2]  )
      cube( size = [1, 1, 11+10*cos(10*i)*sin(10*j)] );
    }
  }
  
  }
  }