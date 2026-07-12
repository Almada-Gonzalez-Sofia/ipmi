//primera imagen
void inicio() {
  image(portada,0,0);
 
  textFont(fuenteUno);
  textSize(22);
  text(texto,80,animacion);
  
  if (frameCount/60 >= 10 )
    estado = "anime";
}

//segunda imagen
void anime() {
  image(historia,-10,0);
  fill (random(255),0,random(255));
  text(texto2,70,35);
  
  if (frameCount/60 >= 20 )
    estado = "info";
}

//tercer imagen
void info() {
  image(scouts,0,0);
  fill(100,0,opa);
  textSize(50);
  textFont(fuentetres);
  text(texto4,25,36);
    
  if( opa <= 255 ){  
   opa += 1;
  }
   
  if (frameCount/60 >= 30 )
    estado = "sailor";
}

//cuarta imagen
void sailor() {
  image(amigos,0,0);
  fill(255);
  textFont(fuentecuatro);
  textSize(tam);
  text(texto3,90,300);
    
  if( tam <= 16 ){  
    tam += 1;
  }
  
 
  if (frameCount/60 >= 40 ) {
    estado = "pantallaFinal";
  }
}

// quinta imagen
void pantallaFinal() {
  image(fin, 0 , 0); 
  fill(255);
  textSize(21);
  text(texto5, 80, 210);
  
  //boton
  fill(232,112,218);
  rect(esquinaX1, esquinaY1, ancho, alto);
  fill(255);
  textSize(30);
  text("Reiniciar", 60, 108);
}

void mousePressed() {
  if(estado==("pantallaFinal")){

    if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1+alto){
      estado = "inicio";
      println("se presiono el boton");
      frameCount = 0;
      tam=1;
      opa=1;
    }
  }
