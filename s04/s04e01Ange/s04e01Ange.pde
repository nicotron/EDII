//UDD - Expresión Digital II
//S04e01Ange
//Loop de una pelota que cambia tamaño y color y se mueve

int ax;
int c1;
int c2;

void setup() {
  size(500, 500);

  ax = 0;
  c1 = color(234, 89, 32); //color celeste
  c2 = color(32, 198, 234); //color naranjo
}

void draw() {
  background(c1);
  noStroke(); 
  //ellipse naranja
  if (ax <= width/2) {
    fill(c2);
    ellipse(ax, ax, 60, 60);
  } else if (ax > width/2) {
    fill(c1);
    background(c2);
    ellipse(ax, height/2, 25, 25);
  }
  ax += 4;
  if (ax == width) {
    ax = 0;
  }
}

