//UDD - Expresión Digital II
//s07t01Sofia
//Composición la cual consiste de cuatro triángulos los cuales siguen al mouse con sus puntas 
//Alrededor de las puntas del triángulo, hay cuatro elipses los cuales al moverlos
//alrededor del canvas se separan o se juntan.
//Al apretar la letra ''a'', los colores de los triángulos cambiarán al color fucsia
//Al apretar la letra ''b'', los colores de los triángulos volveran al color incicial (celeste).

//variables color y stroke
color cv, cc, cb, cn;
float s1, s2, s3, s4;

//variable color triangulo
color tri;

void setup() {
  size(500, 500);

  //inicialización colores
  cv = color(180, 45, 120);
  cc = color(110, 236, 255, 100);
  cb = color(255, 255, 255, 100);
  cn = color(0, 0, 0);

  //inicialización color triángulo
  tri = cc;

  //inicialización tamaño stroke
  s1 = 5;
  s2 = 10;
  s3 = 15;
  s4 = 20;
} 

void draw() {
  background(cn);
  triangle(mouseX, mouseY, mouseY);
  ellipse(mouseX, mouseY, mouseY);
}

//función específica 1
void triangle(float posx, float posy, float altura) {
  fill(tri);
  noStroke();
  triangle(225, 7, 275, 7, posx, posy);
  triangle(7, 225, 7, 275, posx, posy);
  triangle(225, 493, 275, 493, posx, posy);
  triangle(493, 225, 493, 275, posx, posy);
}

//función específica 2 
void ellipse(float posx, float posy, float altura) {
  noFill();
  stroke(cb);
  strokeWeight(s1);
  ellipse(posx, posy, altura, altura);
  strokeWeight(s2);
  ellipse(posx, posy, altura * 2, altura * 2);
  strokeWeight(s3);
  ellipse(posx, posy, altura * 4, altura * 4);
  strokeWeight(s4);
  ellipse(posx, posy, altura * 6, altura * 6);
}

void keyPressed () {
  //al apretar la tecla 'a' los colores del triángulo pasarán al color fucsia
  if (key == 'a') {
    tri = cv;
  }
  //al apretar la tecla 'b' los colores del triángulo pasarán al color celeste
  if (key == 'b') {
    tri = cc;
  }
}