//UDD - Expresión Digital II
//s05t02Sofia
//Reescribir y corregir las variables escritas y comentarios

//variable de los colores
color cb, cn, cv, cc;

//variable de dirección y posición
float dirx, diry, pox, poy;

//distancia de los circulos del for loop
int x;

void setup () {
  size(500, 500); //el porte del canvas es de 500px por 500px

  //colores
  cb = color(255, 255, 255); //color blanco
  cn = color(0, 0, 0); //color negro
  cv = color(171, 205, 118); //color verde
  cc = color(181, 237, 236); //color celeste agua
  x = 14; //valor de mi x es 14

  //variables de dirección y posición
  dirx = 10; 
  diry = 2; 
  pox = height; 
  poy = 0;
}

void draw() {
  //color del fondo (blanco), ubicación de la elipse y su tamaño
  background (cb);  
  ellipse (pox, poy, 50, 50);

  //velocidad 
  pox = pox + dirx; 
  poy = poy + diry; 

  //si la posición de x es mayor del ancho del canvas, dirx será igual al negativo de dirx y se agregarán dos pelotas
  if (pox > width) { 
    dirx = - dirx; 
    fill (cv); 
    stroke(cc); 
    strokeWeight(10);
    x += 2;
  }

  //si la posición de x es menor que 0, dirx será igual a la dirx multiplicándose por el negativo de 1 y se agregarán 2 pelotas
  if (pox < 0) {  
    dirx = dirx * -1; 
    fill (cc); 
    stroke (cc); 
    strokeWeight (70); 
    x += 2;
  }

  //si la posicion de y es mayor que el alto del canvas, la diry será igual a la diry multiplicándose por el negativo de 1 y se agregarán 10 pelotas
  if (poy > height) { 
    diry = diry * -1; 
    fill (cn); 
    stroke (cn);
    strokeWeight (10); 
    x += 10;
  }
  //si la posición de y es menor que 0, la diry será igual a la diry multiplicándose por el negativo de 1 y se agregaran 10 pelotas
  if (poy < 0) { 
    diry = - diry;
    fill (cv);
    stroke (cv);
    strokeWeight (20); 
    x += 10;
  }

  //for que crea pelotas en el fondo declaro que i = 0, si i es menor o igual al ancho, i aumenta en 10
  for (int i = 0; i <= width; i += x) { 

    //declaro que j = 0, si es menor o igual a la altura, j aumenta
    for (int j = 0; j <= height; j +=x) { 
      noStroke (); 
      fill (cv); 
      //fill 
      //fill 
      ellipse (i, j, 5, 5);
      ellipse (i, j, 10, 10);
    }
  }
}