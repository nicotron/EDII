int divs = 10;
float deg =45.0;
float rad = radians(deg);

void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  background(120);
  pushMatrix();
  translate(width/2, height/2);
  rotate(rad);
  dia();
  popMatrix();
  rad+=0.02;
}

void dia() {
  rectMode(CENTER);
  fill(100, 0, 0);
  for (float i=0; i<100; i+=10) {
    rect(i, i, 5, 5);
  }
}

