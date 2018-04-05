class Cube {
  PVector pos;
  float r;
  
  Cube(float x, float y, float z, float r_) {
    pos = new PVector(x, y, z);
    r = r_;
  
  }
  
  void show() {
    pushMatrix();
    //noFill();
    fill(50);
    //noStroke();
    stroke(0);
    translate(pos.x,pos.y,pos.z);
    
    box(r);
    
    popMatrix();
  
  }
  
  ArrayList<Cube> generate() {
    println("generating.");
    ArrayList<Cube> childrenCubes = new ArrayList<Cube>();
    println("generating..");
    for (int x = -1; x < 2; x++) {
      for (int y = -1; y < 2; y++) {
        for (int z = -1; z < 2; z++) {
          int check = abs(x) + abs(y) + abs(z);
          //println("tring to make cubes");
          if (check > 1) {
            float newR = r/3;
            float newX = pos.x + (newR * x);
            float newY = pos.y + (newR * y);
            float newZ = pos.z + (newR * z);
            Cube c = new Cube(newX,newY,newZ, newR);
            childrenCubes.add(c);
          }
          
        } //end z loop
      }// end y loop
    } // end x loop
  
   return childrenCubes; 
  }
  
}
