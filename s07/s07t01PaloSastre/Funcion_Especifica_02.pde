//Función específica 02
void octagono(color oct) {
  //elipses arriba y abajo rectangulos
  noStroke();
  fill(co);
  ellipse(250, 142, 15, 15); //circulo de arriba
  ellipse(250, 358, 15, 15); //circulo de abajo

  //elipse de afuera
  strokeWeight(7);
  stroke(n);
  noFill();
  ellipse(width/2, height/2, 250, 250);

  //octagono
  noStroke();
  fill(oct);
  beginShape();
  vertex(288, 342); //abajo - der
  vertex(212, 342); //abajo - izq
  vertex(158, 288); //mas a la izq - abajo
  vertex(158, 212); //mas a la izq - arriba
  vertex(212, 158); //arriba - izq
  vertex(288, 158); //arriba - der
  vertex(342, 212); //mas a la der - arriba
  vertex(342, 288); //mas a la der - abajo
  endShape(CLOSE);

  //lineas afuera octagono
  strokeWeight(5);
  stroke(b);
  line(148, 298, 202, 352); //linea suroeste
  line(148, 202, 202, 148); //linea noroeste
  line(298, 148, 352, 202); //linea noreste
  line(352, 298, 298, 352); //linea sureste

  //lineas dentro octagono
  strokeWeight(5);
  stroke(n);
  line(200, 198, 200, 302); //izq
  line(300, 198, 300, 302); //der
  line(200, 198, 300, 302); //diagonal de izq arriba a abajo der
  line(300, 198, 200, 302); //diagonal de izq abajo a arriba der

  //rectangulos
  strokeWeight(7);
  stroke(t);
  fill(bt);
  rectMode(CORNERS);
  rect(212, 158, 242, 342); //rect izq
  rect(258, 158, 288, 342); //rect der
}

