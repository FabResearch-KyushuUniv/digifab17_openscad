outer_size = [60,60,40];//外箱のサイズ
tilt = 5;//傾斜の角度
btm_thick = 1;//底の厚み

inner_height = outer_size[2]-btm_thick;

module wall(){
    translate([0,outer_size[1],0]){
rotate([90,0,0]){
linear_extrude(outer_size[0]){
polygon([[0,0],[0,outer_size[2]],[tan(tilt)*inner_height,0]]);
}
}
}
}


rotate([0,0,0]){
union(){
linear_extrude(btm_thick){
square([outer_size[0],outer_size[1]]);
}
wall();
translate([outer_size[0],outer_size[1],0]){
rotate([0,0,180]){
    wall();
}    
}
translate([outer_size[0],0,0]){
rotate([0,0,90]){
    wall();
}    
}
translate([0,outer_size[1],0]){
rotate([0,0,-90]){
    wall();
}    
}
}
}