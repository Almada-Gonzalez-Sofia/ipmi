
void setup() {
  size(400, 400);
}

void draw() {

  background(255);

  translate(width/2, height/2);

  rotate(radians(35));

  stroke(0);

  for (int x = -300; x <= 300; x += 45) {

    line(x, -300, x, 300);

    for (int y = -300; y <= 300; y += 18) {

      line(x-8, y, x+8, y);

    }
  }
}
