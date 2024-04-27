PImage campo;
void setup (){
  size (800, 400);
  background (252, 184, 147);
  campo = loadImage("campo.jpg");
}

 void draw(){
   image (campo, 0, 0, 400, 400);
   
   //pasto
   noStroke();
   fill(146, 120, 36);
   rect(400, 240, 400, 200);
   
   
   //cielo
   noStroke ();
   fill(255, 200, 150);
   rect(400, 220, 400, 30);
   fill(255, 210, 150);
   rect(400, 185, 400, 30);
   fill(225, 220, 230);
   rect(400, 10, 400, 180);
   fill(213, 178, 175);
   rect(400, 2, 400, 12);
   
   
   
   //nubes
   noStroke ();
   fill(229, 155, 128);
   ellipse(610, 85, 190, 20);
   ellipse(600, 100, 200, 15);
   fill(250, 220, 180);
   ellipse(590, 180, 100, 10);
   ellipse(480, 210, 140, 20);
   ellipse(540, 230, 170, 20);
   fill(255, 230, 210);
   ellipse(650, 150, 190, 25);
   ellipse(610, 130, 180, 20);
   ellipse(500, 105, 200, 30);
   fill(255, 220, 200);
   ellipse(620, 80, 190, 35);
   fill(252, 236, 220);
   ellipse(700, 50, 90, 10);
   ellipse(730, 40, 100, 10);
   ellipse(440, 20, 30, 10);
   ellipse(770, 30, 30, 10);
   ellipse(630, 10, 60, 10);
   fill(252, 166, 113);
   ellipse(750, 210, 90, 15);
   
   
   
   //casa
   fill(110, 48, 16);
   rect(600, 210, 100, 60);
   rect(720, 250, 3, 20);
   rect(710, 250, 3, 20);
   rect(730, 250, 3, 20);
   fill(57, 45, 29);
   quad(600, 210, 630, 250, 740, 250, 710, 210);
   noStroke();
   fill(218, 196, 178);
   rect(605, 248, 5, 20);
   
   
   //arboles y plantas
   noStroke();
   fill(51, 54, 16);
   triangle(740, 260, 780, 260, 760, 230);
   fill(123, 88, 40);
   triangle(760, 260, 800, 260, 790, 240);
   fill(148, 107, 29);
   rect(400, 272, 400, 5);
   fill(170, 117, 13);
   rect(400, 280, 400, 10);
   rect(420, 300, 360, 20);
   fill(91, 79, 28);
   rect(400, 330, 400, 10);
   rect(400, 370, 400,25);
   fill(66, 54, 15);
   rect(400, 390, 400, 10);
   fill(240, 163, 60);
   circle(470, 300, 5);
   circle(520, 310, 6); 
   circle(530, 315, 5);
   circle(550, 300, 6);
   circle(560, 315, 6);
   circle(570, 310, 5);
   circle(560, 305, 5);
   circle(580, 320, 6);
   circle(520, 305, 5);
   circle(600, 300, 5);
   circle(735, 305, 6);
   circle(700, 310, 5);
   circle(510, 300, 5);
   circle(765, 315, 5);
   circle(755, 300, 5);
   circle(785, 305, 7);
   circle(780, 365, 8);
   circle(750, 300, 6);
   circle(740, 315, 5);
   circle(620, 350, 6);
   strokeWeight(2);
   stroke(188, 150, 85);
   line(460, 350, 480, 420);
   line(480, 340, 480, 420);
   line(500, 340, 520, 400);
   line(520, 350, 540, 400);
   line(600, 350, 630, 400);
   line(630, 330, 680, 400);
   line(670, 350, 690, 400);
  
   
   
   
   

   
}
