//UDDD - Expresión Digital II
//S04e01Sofia
//pelota que al avanzar hacia la derecha cambia de tamaño, color y dirección con el fondo

int ax;
int a1;
int a2;


void setup() {
  size(350, 350);
  
  ax = 0;
  a1 = color(171, 205, 118);
  a2 = color(181, 237, 236);
}

void draw() {
  background(a1);
  noStroke();
  //ellipse cyan
  if (ax <= width/2){
    fill(a2);
    ellipse(ax, height/2, 15, 15);
  }else if (ax > width/2) {
    fill(a1);
    background(a2);
    ellipse(ax, ax, 30, 30 );
  }
  ax += 2;
  if (ax == width){
  ax = 0;
  }
}