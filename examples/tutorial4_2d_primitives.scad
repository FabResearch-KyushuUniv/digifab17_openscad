//2D primitives
square([10,20]);

translate([20,0,0]){
circle(10);
}

translate([40,0,0]){
circle(10,$fn=100);//球と同じくメッシュの細かさが指定できる
}

translate([60,0,0]){
text("A",20);//残念ながら日本語は無理
}

translate([80,0,0]){
polygon([[10,0],[20,40],[40,25],[80,10],[30,-20]]);   
}