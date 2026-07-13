PImage obra27;
color col;
float angCortas;
int separacionLargas;
float giro;
int grosor;

void setup() {
  size(800, 400); 
  obra27 = loadImage("obra27.jpg");
  
  reiniciarVariables(); 
}


void draw() {
  background(255); 
  strokeWeight(grosor);
  
  dibujarIlusion(col, angCortas, giro); 
  image(obra27, 0, 0); 
}


void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciarVariables(); 
  }
  if (key == 'c') {
    col = color(random(255), random(255), random(255)); 
  }
}


void mouseMoved() {
  giro = map(mouseX, 0, width, 0, 180); 
  
  if (ubicacionMouse(200)) { 
    grosor = 3; 
  } else {
    grosor = 2; 
  }
}

