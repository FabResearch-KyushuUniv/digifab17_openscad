module cylinder1(){
        rotate([45,45,45]){
        cylinder(10,5,5);
        }
    }
module cylinder2(){
         translate([2.5,5,2.5]){ 
        rotate([30,30,30]){
        cylinder(10,5,5);
        }
    }
}
union(){ // 合体(論理和) 実は書かなくても自動的にやってくれている
    cylinder1();
    cylinder2();
    }

translate([20,0,0]){ 
    intersection(){ //共通部分（論理積）
        cylinder1();
        cylinder2();
        }      
}

translate([40,0,0]){ 
    difference(){ //引き算
        cylinder1();
        cylinder2();
    }
}

translate([60,0,0]){ 
    difference(){ //differenceは呼び出す順番に依って結果が変わる
        cylinder2();
        cylinder1();

    }
}