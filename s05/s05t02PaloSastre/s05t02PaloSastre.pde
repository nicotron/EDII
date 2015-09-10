//UDD - Expresion Digital II
//s05t02PaloSastre
//cambio de forma en la que están escritas las variables, en un código que usa un doble for loop.

//Colores
color cn, cb, cr, cv, rellenoCirculo, bordeCirculo;

//Posicion y movimiento
float circleX, circleY, moveX, moveY;

//Distancia entre los circulos del doble for loop
int x;

void setup() {
  size(500, 500); //el tamaño del canvas es 500 px por 500 px

  //Colores
  cn = color(0); //color negro
  cb = color(255); //color blanco
  cr = color(255, 151, 161); //color rosado
  cv = color(61, 177, 171); //color verde
  rellenoCirculo = cn; //fill color negro
  bordeCirculo = cv; //stroke color verde

  //Inicializacion de posicion y movimiento
  circleX = 0;
  circleY = height;
  moveX = 3;
  moveY = 5;

  //Distancia inicial entre los circulos del doble for loop
  x = 13;
}

void draw() {
  background(cb);

  //Velocidad
  circleX = circleX + moveX;
  circleY = circleY + moveY;
 
  //Doble for loop que genera elipses y cambia la distancia entre ellas
  for (int i = 0; i <= height; i += x) {
    for (int j = 0; j <= height; j += x) {
      ellipse(i, j, 20, 20);
      fill (cv);
      noStroke();
    }
  }

  //elipse con fill negro y stroke verde de 10 que inicia en (0, 500)
  fill(rellenoCirculo);
  stroke(bordeCirculo);
  strokeWeight(10);
  ellipse(circleX, circleY, 50, 50);

  //Si circleX es mayor al width, cambia de direccion, fill blanco, stroke verde de 10 
  if (circleX > width) {
    moveX = -moveX;
    strokeWeight(10);
    rellenoCirculo = cb;
    bordeCirculo = cv;
    x += 9;
  }

  //Si circleY es mayor al height, cambia de direccion, fill negro, stroke rosado de 20 
  if (circleY > height) {
    moveY = -moveY;
    strokeWeight(20);
    rellenoCirculo = cn;
    bordeCirculo = cr;
    x += 5;
  }

  //Si circleX es menor a 0, cambia de direccion, fill blanco, stroke rosado de 30
  if (circleX < 0) {
    moveX = -moveX; 
    strokeWeight(30);
    rellenoCirculo = cb;
    bordeCirculo = cr;
    x += 6;
  }

  //Si circleY es menor a 0, cambia de direccion, fill negro, stroke verde de 40 
  if (circleY < 0) {
    moveY = -moveY;
    strokeWeight(40);
    rellenoCirculo = cn;
    bordeCirculo = cv;
    x += 7;
  }
}

