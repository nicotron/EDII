//UDD - Expresion Digital II
//s04e01PaloSastre
//pelota que se mueve en la pantalla

float strokeSize;
int c1;
int c2;
int cy;

void setup() {
  size(500, 500);

  strokeSize = 10;
  c1 = color(255, 151, 161);
  c2 = color(61, 177, 171);
  cy = 0;
}

void draw() {

  background(c1);
  strokeWeight(30);
  stroke(255);
  fill(c2);
  ellipse(width/2, cy, 100, 100);

  //si el circulo está en la mitad de la pantalla, el strokeweight es 10
  //si el circulo está en la mitad de la pantalla, el background y el color del elipse cambian
  if (cy >= height/2) {
    background(c2);
    strokeWeight(strokeSize);
    stroke(255);
    fill(c1);
    ellipse(width/2, cy, 100, 100);
  } 

  //si la elipse llega abajo, vuelve a arriba
  if (cy == height) {
    cy = 0;
  }

  //el circulo va sumando uno en el eje y
  cy = cy + 1;
}

