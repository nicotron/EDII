// rotate
float transparencia, r;

void setup() {
  size(600, 600);
  smooth();
  noStroke();
  background(255, 0, 255);
  r = 0;
  transparencia = 50;
}
void draw() {
  //un rectangulo con alpha para reemplazar el background
  fill(255, 0, 255, transparencia);
  rectMode(CORNER);
  rect(0, 0, width, height);

  //elemento
  translate(mouseX, mouseY);
  rotate(r);
  fill(0, 255, 255);
  rectMode(CENTER);
  rect(0, 0, 20, 50);
  r += 0.1;
}

