//UDD - Expresion Digital II
//s07t01laura
/*funciones propias que dibujan cuadrados, 
lineas y circulos y fomran una especie de mandala geometrica*/
float dig = 45.0;
color r, a, b, n;


void setup() {
  size(600, 600);
  background(25);
  smooth();
  
//inicialisacion colores 
  r = color (255, 140, 239);//rosado
  a = color (251, 255, 158);//amarillo
  b = color (255);//blanco
  n = color (0);
}

void draw() {
  superduper (mouseX, mouseY, mouseX);
  superstar (300, 300, mouseX);
  superlinea(mouseX, mouseY, mouseX);
}

// funcion propia donde se dibuja una linea entremedio de los cuadrados
void superlinea (float posx, float posy, float ancho) {
  if (mousePressed) {
    stroke(a);
    strokeWeight(4);
    pushMatrix();
    translate(300, 300);
    rotate(radians(frameCount * 22.5  % 360));
    line(posx, posy, posx + ancho, posy + ancho);
    popMatrix();
  }
}
//funcion propia donde se dibujan los cuadrados que rotan
void superduper(float posx, float posy, float ancho) {
  if (mousePressed) {
    fill(r);
    stroke(r);
    strokeWeight(6);
    pushMatrix();
    translate(300, 300);
    rotate(radians(frameCount * 45  % 360));
    rect(posx, posy, ancho, ancho);
    popMatrix();
  }
}
// funcion que dibuja 2 circulos uno mas central y otro x fuera
void superstar(float posx, float posy, float ancho) {
  if (keyPressed) {
    noFill();
    stroke(a);
    strokeWeight(3);
    ellipse (posx, posy, ancho * 4.5, ancho * 4.5);
    //circulo central relleno
    noFill();
    stroke(a);
    strokeWeight(3);    
    ellipse (posx, posy, ancho, ancho);
    
  }
}

