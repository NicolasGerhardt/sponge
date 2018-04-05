Cube c;

void setup() {
  size(500, 500, P3D);
  
  c = new Cube(0,0,0,250);
}

void draw() {
  background(50,50,125);
  
  lights();
  pointLight(255,255,255,0,0,-width);
  translate(width/2, height/2);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.02);
  
  c.show();
  //box(200);
  
  
}
