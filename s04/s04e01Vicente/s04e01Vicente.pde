//UDD-Expresión Digital II
//s04e01Vicente
//animación processing style

int c1;
int c2;
float mX;
int kk;

void setup() {
  size(500, 500);
  c1 = color (69, 119, 232);
  c2 = color (232, 182, 71);
  mX = 250;
  kk = 0;
}


void draw() {

  background(c1);
  noStroke();
  rectMode(CENTER);  
  fill(255);  
  kk++;
  if (kk >=  250) {
    background(c2);
  } // cuando el cuadrado llega a la mitad del canvas el fondo cambia al segundo color
  rect(kk, kk, 50, 50);

  if (kk > 500) {
    kk = 0;
  } //Cuando el cuadrado llega al final del canvas vuelve a empezar desde el inicio
}

