//UDD - exprecion digital 2
//s04e01laura
//pelota que se mueve
int co1;
int co2;
int co3;
float s1; //tamaño 
float s2;//segunda cordenada de tamaño
float x1;//cordenada en x
float y1;//cordenada de y

void setup() {
  size(500, 100);
  co1 = color (255, 140, 239);//rosado
  co2 = color (255, 255, 255);//blanco
  co3 = color (251, 255, 158);//amarillo
  s1 = 50;
  s2 = 50;
  x1 = 0;
  y1 = height/2 - s2/2;
}

void draw() {
  if (x1 <= 250) {
    background(co3);//color amarillo
   fill(co1);  // rectangulo rosado
    strokeWeight(5);
    strokeJoin(BEVEL);
    rect(x1, y1, s1, s2);//cordenadas y tamaño
  } else if (x1>=250) {
    background(co1);//fondo rosado
    fill(co2);  // rectangulo amarillo
    rect(x1, y1, s1, s2);
  }
  if (x1 == width ) {
    x1 = 0;
  }
  x1+=2;
}