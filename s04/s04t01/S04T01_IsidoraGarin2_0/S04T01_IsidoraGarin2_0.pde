// UDD - Expresión Digital II
// S04T01_IsidoraGarín
// Mover un objeto que rebote en los bordes del canvas, con cambio de posición, tamaño y color


float posx; // posición en x
float posy; //posición en y
float velx; //velocidad de x
float vely; //velocidad de y
float dirx; //dirección de x
float diry; //dirección de y
float dia; //diámetro ellipse
float sw; //strokeWeight
int bla; //color blanco
int neg; //color negro
int tur; //color turquesa
int ver; //color verde

void setup () {
  
  size (500, 500); //tamaño del canvas
  
  posx = width/3; //posición en x
  posy = width/3; //posición en y
  velx = 1.5; //velocidad en x de 1,5
  vely = 2; //velocidad en y de 2
  dirx = 1; //dirección en x de 1
  diry = 1; //dirección en y de 1
  dia = 30; //diámetro ellipse de 30
  sw = 4; //strokeWeight de 4
  bla = color (255, 255, 255); //color blanco
  neg = color (0, 0, 0); //color negro
  tur = color (27, 204, 167); //color turquesa
  ver = color (128, 255, 130); //color verde
}

  void draw () {
    
    posx = posx + velx * dirx; //posición de x es igual a la posición de x más la velocidad de x por la dirección de x
    if (posx > width - dia/2) { //si la posición en x es mayor al ancho del canvas menos la mitad del diámetro (al restarle la mitad del diámetro evita que se corte la pelota)...
       dirx = dirx * -1; //dirección de x es igual a la dirección en x multiplicado por -1 (esto permite que la pelota se mueva en sentido contrario
       fill (tur); //cambiar relleno a color turquesa
       stroke (ver);//hacer stroke color verde
       strokeWeight (sw); //strokeWeight de 4
    }
    
    if (posx < 0 + dia/2) { //si la posición en x es menor a 0 más la mitad del diámetro...
       dirx = dirx * -1; //dirección de x es igual a la dirección en x multiplicado por -1 (esto permite que la pelota se mueva en sentido contrario
       fill (ver); //cambiar relleno a color verde
       stroke (bla); //hacer stroke color blanco
       strokeWeight (sw); //strokeWeight de 4
    }
    
    posy = posy + vely * diry;//posición de y es igual a la posición de y más la velocidad de y por la dirección de y
    if (posy > height - dia/2) { //si la posición en y es mayor al alto del canvas menos la mitad del diámetro...
       diry = diry * -1; //dirección de y es igual a la dirección en y multiplicado por -1 (esto permite que la pelota se mueva en sentido contrario
       fill (bla); //cambiar relleno a color blanco
       stroke (tur); //hacer stroke color turquesa
       strokeWeight (sw); //strokeWeight de 4
    }
    
    if (posy < 0 + dia/2) { //si la posición en y es menor a 0 más la mitad del diámetro...
       diry = diry * -1; //dirección de y es igual a la dirección en y multiplicado por -1 (esto permite que la pelota se mueva en sentido contrario
       fill (bla); //cambiar relleno a color blanco
       stroke (tur); //hacer stroke color turquesa
       strokeWeight (sw); //strokeWeight de 4
    }
    
    background (neg); //fondo negro; se pone acá para mantener siempre el fondo negro, con las condiciones genera "estelas" de los colores
    ellipse (posx, posy, dia, dia); //posición de ellipse en posx y posy, tamaño dependiendo del random de la escala
}
