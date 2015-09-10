//UDD - Expresión Digital II
//s05t02 laura 
//rescribir la tarea s05e01 bajo las nuevas reglas de progrmación

//variable del valor asignado a i y j
int a;
//variable de colores
int c1, c2, c3, c4; 

//variable de direccion y posicion
float px, py, dx, dy; 
 
void setup () {
  size(500, 500);
//inicializacion de colores
  c1 = color(255, 255, 255); //blanco
  c2 = color(0, 0, 0); //negro
  c3 = color(255, 140, 239); //rosado
  c4 = color(251, 255, 158); //amarillo

//inicializacion de parametro de posicion y dirección
  px = width; 
  py = 0; 
  dx = 4; 
  dy = 6; 
  
//valor asignado a variable de j e i
  a = 40;
}

void draw() {
//color de fondo y tamaño de la ellipse
  background (c1); 
  ellipse (px, py, 60, 60); 
  
//velocidad de la ellipse
  px = px + dx; 
  py = py + dy; 
  
  /* si px es mayor al alto del canvas, este cambiara de direccion a una elipse rosada
 y suma 4 al valor de separacion de las ellipses del fondo */ 
  if (px > height) { 
    dx = - dx; 
    fill (c3); 
    a += 4;
  }

/*si px es menor a 0, este cambiara la dirreccion de la ellipse amarilla
 y suma 2 al valor de separacion de las ellipses del fondo  */
  if (px < 0) { 
    dx = - dx; 
    fill (c4); 
    a += 2;
  }

/*si py es mayor al ancho, este cambiara la dirreccion de la ellipse negra
 y suma 4 al valor de separacion de las ellipses del fondo  */
  if (py > width) { 
    dy = - dy; 
    fill (c2);
    a += 4;
  }

/*si py es menor a 0, este cambiara la dirreccion de la ellipse rosada
 y suma 2 al valor de separacion de las ellipses del fondo  */
  if (py < 0) { 
    dy = - dy; 
    fill (c3);
    a += 2;
  }
  
/* for que crea un patron de ellipses ordenadas a igual destancia y que se van 
separando segun a*/  
  for ( int i = 0; i < width; i += a) {
    for ( int j = 0; j < height; j += a) {
      noStroke();
      ellipse(i, j, 20, 20);  
    }
  }
}

