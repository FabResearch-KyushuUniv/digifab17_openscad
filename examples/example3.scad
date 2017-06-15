//example3.scad

module square_torus(r,tube_r,rot){//四角の傾きを自由に決めて回転押し出し出来るリング
    rotate_extrude(){
    translate([r,0]){
    rotate([0,0,rot]){
    square(tube_r,center=true);
    }
    }
}
    }
    intersection_for(i=[1:15]){ //intersection_forはforloopの中で作ったオブジェクト全ての共通部分を出力する
    rotate([i,i/2,i/3]){
    translate([i,i,i/2]){
    square_torus(40,35-i,i*45/15);
    }
}
}
    

    
