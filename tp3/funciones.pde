void dibujarIlusion(color col, float angCortas, float giro) {
  
  stroke(col); 
  pushMatrix();
  translate(width/2, height/2); 
  rotate(radians(angCortas)); //a partir de aca se rota lo que se dibuja
  
  int contador = 0;
 
  for (int x = -600; x <= 600; x += separacionLargas) {
    line(x, -600, x, 600); //diagonales arriba abajo
    for (int y = -600; y <= 600; y += 18) { //distancia de cortitas
      pushMatrix();
      translate(x, y); 
      
      if (contador % 2 == 0) { //separa columnas pares de las impares
        rotate(radians(-angCortas + giro)); //par=0 definicion en el reinicio
      } else {
  
        rotate(radians(-angCortas + 90 + giro)); //impar=90
      }
      line(-10, 0, 10, 0); 
      popMatrix();
    }
    contador++; //suma una raya diagonal al contador para repetir el ciclo for y crear la siguiente diagonal con sus rayitas cortas correspondientess
  }
  
  popMatrix();
}

void mouseMoved() {
  giro = map(mouseX, 0, width, 0, 180); 
  if (ubicacionMouse(200)) {
    grosor = 3; 
  } else {
    grosor = 2; 
  }
}


boolean ubicacionMouse(int limite) {
  float distancia = dist(mouseX, mouseY, width/2, height/2);
  if (distancia < limite) {
    return true;
  } else {
    return false;
  }
}

void reiniciarVariables() {
  col = color(0);
  angCortas = 35;
  separacionLargas = 45;
  giro = 0; 
  grosor=3;
}
