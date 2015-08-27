//UDD- Expresión Digital II
//S04E01IsidoraV
//Movimiento de una elipse sobre el Canvas y que se genere un Loop



float cx; //posicion ellipse
int v;
int a;
float b;

void setup( ) {
  size(500, 500);
  
  cx= 10;
  v= color(103, 155, 53); //verde
  a= color(0, 72, 156); //azul
  b= color(0); //negro
  
}

void draw ( ) {
  
  background(v);
  
  //Ellipse que se mueve
  ellipse(cx, cx, 10, 10);
  fill(a);
  noStroke( );

//loop de la pelota en las coordenadas 200, 200
    if (cx >= 200) {
    cx= 10;
  }
  
  
  //Si alcanza la mitad de su camino 
  else if (cx >= 100) {
    fill(b);
    ellipse(cx, cx, 20, 20);
  }
  
  //movimiento de pelota, 1 px por actualización
  cx ++; 
  
}