//fn(fecha, temmax, viento, temmin, hummed, hummax, hummin, temmed)
void fn(String fecha, float temmax, float viento, float temmin, float hummed, float hummax, float hummin, float temmed) {
  /*
  fecha = titulo
   tem = color
   viento = tamaños
   */

  //humedad minima
  background(hummin);

  //titulo
  fill(255-temmax, 255-temmax, 255-temmax);//color depende de la temperatura max
  textSize(50);
  textAlign(CENTER);
  text(fecha, width/2, height/2 + temmin);

  //humedad maxima
  fill(s2);
  ellipse(width/4, height/4, hummax, hummax);

  //temperatura media
  fill(s1);
  stroke(s1);
  strokeWeight(20);
  ellipse(width/4, height/2, temmed, temmed);

  //viento
  fill(s1);
  noStroke();
  ellipse(mouseX, mouseY, viento, viento);

  //humedad media
  for (float i = 0; i < width; i += hummed) {
    for (float j = 0; j < height; j += hummed) { 
      fill(s2);
      strokeWeight(10);
      stroke(s2);
      point(i, j);
    }
  }
}