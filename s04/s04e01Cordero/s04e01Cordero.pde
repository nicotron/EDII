//UDD - Representacion Digital 2
//s04e01cordero
//Loop Pelotita

float cx;
int c1;
int c2;

void setup() {
  size(500, 150);
  
  cx = 0;
  c1 = color(41, 128, 185);
  c2 = color(46, 204, 113);
  
}

void draw() {
  background(c1);
  noStroke();
  //ellipse color 1
  
   //pelotita grande
  if (cx >= width/2) {
  fill(c2);
  ellipse(cx, height/2, 150, 150);
  }
  //pelotita chica
  fill(c2);
  ellipse(cx, height/2, 50, 50);
  cx += 2;
   //Loop cuando pelota llega a width maximo
  if(cx > 500) {
    cx = 0;
  }
  }
