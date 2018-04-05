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
  
  void generate() {
    for (int x = -1; x < 2; x++) {
      for (int y = -1; x < 2; x++) {
        for (int z = -1; x < 2; x++) {
          
        }
      }
    } 
  
  
  }
  
}
