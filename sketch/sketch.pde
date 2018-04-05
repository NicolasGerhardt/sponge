ArrayList<Cube> sponge;

void setup() {
  size(500, 500, P3D);
  
  Cube c = new Cube(0,0,0,250);
  sponge = new ArrayList<Cube>();
  sponge.add(c);
  
}

void keyPressed() {
  //only the spacebar will trigger the below actions
  if(keyCode != 32) {
    //println(keyCode);
    return;
  }
  println("Space Bar Pressed");

  ArrayList<Cube> nextSponge = new ArrayList<Cube>();
  
  for (Cube c : sponge) {
    println("cube");
    ArrayList<Cube> newCubes = c.generate();
    println("cubes generated");
    nextSponge.addAll(newCubes);
    println("cubes added");
  }
  
  sponge = nextSponge;
  println("sponge updated");
}

void draw() {
  background(50,50,125);
  
  lights();
  //ambientLight(0,0,0);
  
  pointLight(0,0,255,0,0,200);
  pointLight(255,0,0,width,0,200);
  pointLight(0,255,0,0,height,200);
  pointLight(255,255,255,width,height,200);
  translate(width/2, height/2);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.02);
  
  //noStroke();
  //sphere(150);
  
  for (Cube c : sponge) {
    c.show();
  }
  //box(200);
  
  
}
