module my2d(){
    difference(){ //booleanは2D同士にも使える
     square([10,20],center=true);
        translate([2,0,0]){
         circle(4);
        }
        }   
    }
    
    linear_extrude(10){ //1つだけなら高さの指定
        my2d();
    }
translate([20,0,0]){
     linear_extrude(10,scale=0.5){ //押し出しながら拡大縮小
        my2d();
    }
}
translate([40,0,0]){
     linear_extrude(10,scale=0.5,twist=90){ //押し出しながら回転
        my2d();
    }
}
translate([60,0,0]){
     linear_extrude(10,scale=0.5,twist=180,$fn=100){ //ここでも粗さの指定が出来る
         my2d();
    }
}