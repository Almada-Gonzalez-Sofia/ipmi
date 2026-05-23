//Martina Fuhr,comision2,119031/9
String estado;
int animacion,tam,esquinaX1,esquinaY1,ancho,alto,opa;
PImage portada,personajes,screen,portales;
String texto,texto2,texto3,texto4;
PFont fuenteUno,fuentetres,fuentecuatro;

void setup() {
  size(640,480);
  estado = "menu";
esquinaX1 = 17;
esquinaY1 = 45;
ancho = 200;
alto = 100;

  
  //primera imagen
  portada=loadImage("sailormoon.jpg");
 texto="Sailor Moon es una serie animada japonesa basada en el manga de Naoko Takeuchi.";
 fuenteUno = loadFont("Franklin.vlw");
 
 //segunda imagen
 personajes=loadImage("luna.jpg");
 texto2="Desarrollado por \nValve Corporation, fue\n lanzado\n el 19 de Abril, en 2011,\n para Steam.Actualmente \n cuesta $5.79 USD\n o $5148,57 pesos.";
  
  
  //tercera imagen
  portales=loadImage("scouts.jpg");
  texto4="En el modo cooperativo para dos \njugadores tiene su propia campaña\n totalmente independiente,\n con una historia única,\n salas de pruebas y dos nuevos\n personajes con los que\n podremos jugar.";
  fuentetres=loadFont("Franklin.vlw");
  opa=1;
  
  //cuarta imagen
screen=loadImage("amiguis.jpg");
  texto3="Y en el modo de un jugador de Portal 2 conoceremos a un\n nuevo elenco de personajes, gran cantidad de innovadores\n puzles y un número mucho mayor de enrevesadas salas\n de pruebas.";
  fuentecuatro= loadFont("gothic.vlw");
  tam =1;


}

void draw() {
 println(mouseX,mouseY);
  animacion=frameCount/2;
  background(0);
  
  //primera imagen
  if ( estado.equals("menu")){
 image(portada,0,0);
 
 textFont(fuenteUno);
 textSize(22);
  text(texto,14,animacion);
  
  if (frameCount/60 >= 10 )
  estado = "juego";
  }
  //segunda imagen
  else if (estado == "juego"){
    image(personajes,-10,0);
  fill (random(255),0,random(255));
  text(texto2,338,27);
  
  if (frameCount/60 >= 20 )
  estado = "info";
  }
  //tercer imagen
  else if (estado == "info"){
    image(portales,0,0);
    fill(255,0,opa);
    textFont(fuentetres);
    text(texto4,10,36);
    
     if( opa <= 255 ){  
    opa += 1;
    }
   
if (frameCount/60 >= 30 )
  estado = "gameplay";
}
  //cuarta imagen
else if (estado == "gameplay"){
    image(screen,10,50);
    fill(255,0,0);
    textFont(fuentecuatro);
    textSize(tam);
    text(texto3,106,412);
    
    if( tam <= 16 ){  
    tam += 1;
    }
    
    rect (esquinaX1, esquinaY1, ancho, alto);
    fill(255);
    textSize(27);
    text("Reiniciar",68,108);
    
}
}
    void mousePressed(){
      
      
         //boton
         if(estado=="gameplay"){

      if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1+alto){
        estado = "menu";
        println("se presiono el boton");
        frameCount = 0;
        tam=1;
        opa=1;
      }
        
        
      }
    }






    
