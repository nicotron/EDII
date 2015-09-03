//UDD-Expresión Digital II
//s04t01berni
//elipse que rebote en paredes del canvas, cambie de color y tamaño

float cordX; //posición en x
float cordY; //posición en y

float velX; // velocidad de x
float velY; // velocidad de Y

int c1;
int c2;
int c3;
int c4;
int c5;
 
void setup() {
  size(500, 500);
  
  cordX = width;
  cordY = 3;

  velX = 6;
  velY = 5;
  
  c1 = color(0, 0, 0); //color negro
  c2 = color (255, 255, 255); //color blanco
  c3 = color (6, 252, 252); //color celeste
  c4 = color(255, 0, 98); //color rosado

  
}
 
void draw() { 
  background(c1); //color gris de fondo
  ellipse(cordX, cordY, 50, 50); //ubicación y tamaño de la elipse
   
  cordX = cordX + velX;
  cordY = cordY + velY;
 
  if (cordX > height) { //si la posición de la elipse en el eje x es mayor que el alto total del canvas
    velX = -velX;
    fill (c3);
    stroke (c3);
    strokeWeight (30); //borde de la elipse 
  }
  
  if (cordX < 0) { //si la posición de x es menor a cero
     velX = - velX;
     fill (c2); 
     stroke (c3);
     strokeWeight (10); //borde de la elipse
  }
 
  if ( cordY > width) {
    velY = -velY; 
   fill (c4);
   stroke (c4);
   strokeWeight (60); //borde de la elipse 
  }
  
  if (cordY < 0) { //si la posición de Y es menor que cero
  velY = - velY;
  fill (c4);
  stroke (c2);
  strokeWeight (10); //borde de la elipse 
  }
}
