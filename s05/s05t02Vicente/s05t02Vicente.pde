//UDD-Expresión Digital II
//s05t02Vicente
//reescribir el código s05e01 con nuevos parámetros de notación


//variables colores
int color_b, color_n, color_a, color_y;  
//moviniento pelotita
float circulo_x, circulo_y, movimiento_x, movimiento_y;




void setup() {

  size(700, 400); //tamaño canvas
  stroke(255); 
  strokeWeight(0); 

  //colores
  color_n = color(0); //negro
  color_b = color(255); //blanco
  color_a = color(69, 119, 232); //azul
  color_y = color(232, 182, 71); //amarillo

  //inicializacion de posición y movimiento
  circulo_x = 0; //posición inicial 
  circulo_y = 0; //posición inicial
  movimiento_x = 1.9; //cuanto se mueve el elemento
  movimiento_y = 7; //cuanto se mueve el elemento

  //FPS de la animación
  frameRate(20);
}

void draw() {
  background(color_a); //color de fondo azul

  //movimiento horizontal del elemento (1.9px/frame)
  circulo_x = circulo_x + movimiento_x; 
  //movimiento vertical del elemento (7px/frame)
  circulo_y = circulo_y + movimiento_y; 

  //si circulo_x es mayor al ancho, cambia dirección, fill blanco, stroke amarillo de 19 
  if (circulo_x > width) {

    movimiento_x = - movimiento_x;
    println("muy a la derecha"); 
    fill(color_b);
    strokeWeight(19);
    stroke(color_y);
  }
  //si circulo_y es mayor al alto, cambia dirección, fill amarillo, stroke negro de 5 
  if (circulo_y > height) { 
    movimiento_y = -movimiento_y;
    println("muy abajo"); 
    fill(color_y);
    strokeWeight(5);
    stroke(color_n);
  }
  //si circulo_x es menor a 0, cambia dirección, fill amarillo, stroke negro de 8 
  if (circulo_x < 0) { 
    movimiento_x = -movimiento_x;
    println("muy a la izquierda"); 
    fill(color_y);
    strokeWeight(8);
    stroke(color_n);
  }
  //si circulo_y es menor a 0, cambia dirección, fill blanco, stroke amarillo de 12 
  if (circulo_y < 0) {
    movimiento_y = - movimiento_y;
    println("muy arriba"); 
    fill(color_b);
    strokeWeight(12);
    stroke(color_y);
  }

  //for que hace que la onda cambie de color al igual que la pelota
  for (int i = 0; i < width; i +=10) {
    fill(color_y);
    ellipse( i, height/2, random(10), random(50));
    ellipse(circulo_x, circulo_y, 40, 40);
  }
}




