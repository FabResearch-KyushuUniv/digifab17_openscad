  union(){
      for(i=[0:36]) {
    for(j=[0:36]) {
      translate( [i, j, 11+10*sin(10*i)*cos(10*j)+2]  )
      cube( size = [1, 1, 11+10*cos(10*i)*sin(10*j)] );
    }
  }
  
  }