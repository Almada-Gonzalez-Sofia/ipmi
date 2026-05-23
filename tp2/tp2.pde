
String estado;
int animacion,tam,esquinaX1,esquinaY1,ancho,alto,opa;
PImage portada,personajes,screen,scouts;
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
  texto="Sailor Moon es una serie animada japonesa basada\n en el manga de Naoko Takeuchi.";
  fuenteUno = loadFont("Franklin.vlw");
 
//segunda imagen
  personajes=loadImage("luna.jpg");
  texto2="cuenta la historia de Usagi Tsukino, una adolescente común que descubre que en realidad es Sailor Moon, una guerrera mágica destinada a proteger la Tierra. Con ayuda de Luna, una gata mágica, comienza a luchar contra fuerzas malignas mientras intenta llevar una vida normal.";
  
  
//tercera imagen
  scouts=loadImage("scouts.jpg");
  texto4="A lo largo de la serie, Usagi conoce a otras guerreras: Sailor Mercury, Sailor Mars, Sailor Jupiter y Sailor Venus. Juntas forman las Sailor Scouts, un equipo que combate enemigos y busca proteger el Cristal de Plata, un poderoso objeto mágico relacionado con el antiguo Reino Lunar..";
  fuentetres=loadFont("Franklin.vlw");
  opa=1;
  
//cuarta imagen
  screen=loadImage("amiguis.jpg");
  texto3="La serie mezcla acción, fantasía, romance y comedia. Usagi descubre que es la reencarnación de la Princesa Serenity y desarrolla una relación con Tuxedo Mask, un misterioso héroe que la ayuda en las batallas.Uno de los temas principales es la amistad, el amor y el trabajo en equipo.";
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
  image(scouts,0,0);
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






    
