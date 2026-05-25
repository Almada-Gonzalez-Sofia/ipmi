String estado;
int animacion,tam,esquinaX1,esquinaY1,ancho,alto,opa;
PImage portada,historia,amigos,scouts;
String texto,texto2,texto3,texto4;
PFont fuenteUno,fuentetres,fuentecuatro;

void setup() {
  size(640,480);
  estado = "inicio";
  esquinaX1 = 17;
  esquinaY1 = 45;
  ancho = 200;
  alto = 100;

//primera imagen
  portada=loadImage("sailormoon.jpg");
  texto="Sailor Moon es una serie animada japonesa basada\n en el manga de Naoko Takeuchi.";
  fuenteUno = loadFont("Franklin.vlw");
 
//segunda imagen
  historia=loadImage("luna.jpg");
  texto2="Cuenta la historia de Usagi Tsukino (Serena), una adolescente\n común que descubre que en realidad es Sailor Moon,\n una guerrera mágica destinada a proteger la Tierra.\n Con ayuda de Luna, una gata mágica, comienza a\n luchar contra fuerzas malignas mientras intenta\n llevar una vida normal.";
  
  
//tercera imagen
  scouts=loadImage("scouts.jpg");
  texto4="A lo largo de la serie, Usagi conoce a otras guerreras: \n Sailor Mercury,\n Sailor Mars,\n Sailor Jupiter\n y Sailor Venus.\n Juntas forman las Sailor Scouts, un equipo que combate\n enemigos y busca proteger el Cristal de Plata, un poderoso\n objeto mágico relacionado con el antiguo\n Reino Lunar..";
  fuentetres=loadFont("Franklin.vlw");
  opa=1;
  
//cuarta imagen
  amigos=loadImage("tuxedo.jpg");
  texto3="La serie mezcla acción, fantasía, romance y comedia.\n Usagi descubre que es la reencarnación de la\n Princesa Serenity y desarrolla una relación con Tuxedo Mask,\n un misterioso héroe que la ayuda en las batallas.\n Uno de los temas principales es la amistad, el amor y el trabajo\n en equipo.";
  fuentecuatro= loadFont("gothic.vlw");
  tam =1;


}

void draw() {
  println(mouseX,mouseY);
  animacion=frameCount/2;
  background(0);
  
//primera imagen
  if ( estado.equals("inicio")){
  image(portada,0,0);
 
  textFont(fuenteUno);
  textSize(22);
  text(texto,80,animacion);
  
  if (frameCount/60 >= 10 )
  estado = "anime";
}
//segunda imagen
  else if (estado == "anime"){
  image(historia,-10,0);
  fill (random(255),0,random(255));
  text(texto2,70,35);
  
  if (frameCount/60 >= 20 )
  estado = "info";
}
//tercer imagen
  else if (estado == "info"){
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
  else if (estado == "sailor"){
  image(amigos,0,0);
  fill(255);
  textFont(fuentecuatro);
  textSize(tam);
  text(texto3,90,300);
    
  if( tam <= 16 ){  
  tam += 1;
}
  fill(232,112,218);
  rect (esquinaX1, esquinaY1, ancho, alto);
  fill(255);
  textSize(27);
  text("Reiniciar",68,108);
    
}
}
  void mousePressed(){
      
      
//boton
  if(estado=="sailor"){

  if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1+alto){
  estado = "inicio";
  println("se presiono el boton");
  frameCount = 0;
  tam=1;
  opa=1;
}
        
        
      }
    }






    





    





    



    



    





    
