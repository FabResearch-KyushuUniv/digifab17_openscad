//tutorial7_loop.scad
numcubes = 32;  //定数の定義は型がないのでintとか書かずいきなり書いてOK
difference(){
    sphere(40,$fn=55); //中心に大きなたまを作って、キューブを引き算
   for(i=[1:numcubes]){
        rotate([0,i*180/numcubes-90,i*2*360/numcubes]){
        translate([45,0,0]){
        rotate([45*i,45*i,45]){
        cube(30,center=true); // 回転して、平行移動して、また回転
                    }       
                }
             }
        }
}
