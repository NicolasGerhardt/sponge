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
    noStroke();
    //stroke(255);
    translate(pos.x,pos.y,pos.z);
    
    box(r);
    
    popMatrix();
  
  }
  
  ArrayList<Cube> generate() {
    ArrayList<Cube> cubes = new ArrayList<Cube>();
    
    for (int x = -1; x < 2; x++) {
      for (int y = -1; x < 2; y++) {
        for (int z = -1; x < 2; z++) {
          float newR = r/3;
          float newX = pos.x + newR*x;
          float newY = pos.y + newR*y;
          float newZ = pos.z + newR*z;
          Cube c = new Cube(newX,newY,newZ, newR);
          cubes.add(c);
          
          
        } //end z loop
      }// end y loop
    } // end x loop
  
   return cubes; 
  }
  
}
