union(){//2つ以上のオブジェクトを合体
    cube(10,center=true);
    translate([0,0,7.5]){
    sphere(10); //半径で指定。d＝にすると直径にも出来る
}
    translate([0,0,7.5*2]){
    cylinder(10,5,7); //高さ 、始まり半径、終わり半径
}
    translate([0,0,30]){
    sphere(7.5,$fn=100); //$fnでメッシュの粗さを変えられる。
  }
  
  }
