//funcion que no retorna valor
void dibujarIlusion(color col, float angCortas, float giro) {
  stroke(col); 
  pushMatrix();
  translate(width/2, height/2); 
  rotate(radians(angCortas)); 
  
  int contador = 0;
 
 //lineas largas
  for (int x = -600; x <= 600; x += separacionLargas) {
    line(x, -600, x, 600); 
//lineas cortas    
    for (int y = -600; y <= 600; y += 18) { 
      pushMatrix();
      translate(x, y); 
      
      if (contador % 2 == 0) { 
        rotate(radians(-angCortas + giro)); 
      } else {
        rotate(radians(-angCortas + 90 + giro)); 
      }
      line(-10, 0, 10, 0); 
      popMatrix();
    }
    contador++; 
  }
  
  popMatrix();
}

//funcion que retorna valor
boolean ubicacionMouse(int limite) {
  float distancia = dist(mouseX, mouseY, width/2, height/2);
  
  if (distancia > limite) { 
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
  grosor = 3;
}
