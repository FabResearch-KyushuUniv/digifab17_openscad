outer_size = [60,60,40];//外箱のサイズ
tilt = 5;//傾斜の角度
btm_thick = 1;//底の厚み

inner_height = outer_size[2]-btm_thick;

scaling = (outer_size[0]-2*inner_height*tan(tilt))/outer_size[0]; //角度からエクストルードの縮小率を決める

translate([0,0,outer_size[2]]){
rotate([180,0,0]){
difference(){
    translate([0,0,outer_size[2]/2+0.01]){
    cube(outer_size,true);
    }//底側の箱生成
    linear_extrude(inner_height,scale=scaling){
        square(outer_size[0],true);
    }//内側に台形作って引き算
}
}
}

