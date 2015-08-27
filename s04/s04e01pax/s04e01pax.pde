//Udd -  expresion digital 2
//s04e01
// Que una pelota recorra el canvas

//variable de tamano y de color
int cx;
int c1;
int c2;

void setup () {
  size(500, 500); //tamaño del canvas
 

  cx = 1; //inicializar la variable 
  c1 = color (232, 1, 20); //colo 1
  c2 = color (6, 255, 192); //color 2
}

void draw () {

 // pimera condicion
  if (cx >= width/2) {
    background(255); //primer color de fondo
    strokeWeight(10); //primer ancho borde
    stroke(0); //color borde
    fill(c2); //color pelota
    ellipse(width/2, cx, 100, 100); //tamaño de la pelota y posicion
  } else if (cx < width/2) { //segunda condicion que despues de la mitad de width cambia el colro
    background(0); //segundo color de fondo 
    strokeWeight(20); //cambio de ancho de borde de pelota
    stroke(255); //segundo color de borde
    fill(c1); //segundo color de pelota
    ellipse(width/2, cx, 50, 50); // tamaño de pelota
  }
  cx += 1; // variable que dice qe avance un pixel por loop
  if (cx == height){ // condicion que dice que despues de llegar a el total de height vuelva al punto 0 de altura.
    cx = 0;
  }
}

