// UDD - Expresión Digital II
// S04E01_IsidoraGarín
// Hacer un loop de un objeto moviéndose

float cx;
int c1;
int c2;

void setup () {
  size (500, 500);
  
  cx = 0;
  c1 = color (27, 204, 167); //color turquesa
  c2 = color (128, 255, 130); //color verde
}

void draw () {
  background (c1); //color turquesa fondo
  noStroke ();
  fill (c2);
  ellipse (cx, height/2, 10, 10);
  
  //ellipse color verde
  if (cx >= width/2) {
    fill (c2);
    ellipse (cx, height/2, 50, 50); // 1/4 del ancho
  } else if (cx > width/2) {
    fill (c2);
    ellipse (cx, height/2, 25, 25); // 2/4 del ancho
  }
  cx += 3;
}