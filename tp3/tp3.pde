PImage obra;

void setup(){
  size (800, 400);
  obra = loadImage ("lunares.jpg");
}

void draw(){
  background (255);
  image (obra, 0, 0, 400, 400);
}
  
