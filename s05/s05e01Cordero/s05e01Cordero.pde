//UDD - Representacion Digital 2
//s04t01cordero
//Rebote Pelotita con FOR
int posX = 0;
int posY = 0;
int speedY= 7;
int speedX = 3;
int c1;
int c2;
float cx;
 
void setup() {
  size(500, 500);
  
  cx = width;
  c1 = color(41, 128, 185);
  c2 = color(46, 204, 113);
}
 
void draw() {
  background(c1);
   noStroke();
   //ellipse color blanco
    for(int i = 0; i < width; i +=20){  //a
        fill(c2);
         rect( i, height/34, random(10), random(50));
         ellipse(posX, posY, 40, 40);
       }
 
  posX = posX + speedX;
  posY = posY + speedY;
 //direccion posicion mas velocidad
    
  if (posX > width) {
    speedX = speedX* -1;
    fill(c2);
    background(c1);
  }
  //ellipse color 1
 
  if (posX < 0) {
    speedX = speedX* -1;
  }
 
  if (posY > height) {
    speedY= speedY* -1;
    
  }
   
  if (posY < 0) {
    speedY= speedY*-1;
  }
  ellipse(posX, posY, 50, 50);
}

