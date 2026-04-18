PImage Venus;
void setup (){
  size (800, 400);
  background (139, 193, 210);
  Venus = loadImage("Venus.jpg");
}  

 void draw(){
   image (Venus, 0, 0, 400, 400);
   fill(255);
   text("X: " + mouseX + "  Y: " + mouseY, 10, 20);
   
   //fondo
   noStroke();
   fill(167, 210, 205);
   rect(400, 150, 400, 350);   
   fill(100, 168, 183);
   rect(400, 0, 400, 40);
   fill(203, 222, 228);
   rect(400, 120, 400, 30);
   fill(45, 57, 57);
   rect(400, 280, 400, 200);
   
   
   
   //venus
   noStroke();
   fill(214, 208, 178);
   ellipse(605, 345, 235, 75);
   fill(213, 214, 200);
   ellipse(605, 345, 220, 60);
   fill(200, 139, 87);
   ellipse(605, 370, 70, 30);
   //pelo
   fill(217, 147, 74);
   ellipse(610, 70, 55, 80);
   //cabeza
   fill(243, 231, 218);
   ellipse(610, 60, 35, 45);
   //ojos
   fill(217);
   ellipse(602, 56, 10, 5);
   ellipse(618, 56, 10, 5);
   fill(55);
   circle(602, 56, 4);
   circle(618, 56, 4);
   //sigue cuerpo
   fill(202, 140, 130);
   ellipse(610, 71, 9, 4);
   fill(243, 231, 218);
   rect(603, 78, 15, 24);
   triangle(575, 94, 645, 105, 601, 190);
   triangle(600, 130, 570, 210, 631, 194);
   triangle(570, 210, 631, 195, 608, 324);
   stroke(243, 231, 218);
   strokeWeight (12);
   line(578, 100, 550, 155);
   line(549, 156, 594, 122);
   line(638, 109, 649, 158);
   line(649, 159, 618, 218);
   triangle(607, 310, 579, 346, 628, 352);
   

}
