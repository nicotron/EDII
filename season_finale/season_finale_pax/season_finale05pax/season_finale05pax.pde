import processing.pdf.*;

int cols, filas;
color  ctt, cro, con, b;
String datos [];
String dia [][];




void setup() {
  size(1920, 400);
    
  datos = loadStrings("seul_2004.csv"); 
  dia = new String[datos.length][24];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }
  smooth();

  cols = 36;
  filas = 10;

  ctt = color(56,84,110);
  cro = color(219,108,80);
  con = color(163,11,2);
  b = color(255);  
}

void draw() {
beginRecord(PDF,"seul_2004.pdf");
  background(b);
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums =1+ y+x*filas;
      if ((nums >= 0) && (nums <= 365)) {
      String fecha = dia [nums] [0];
      float tempmax = float(dia[nums] [1]);
      float tempmed = float(dia[nums] [2]);
      float tempmin = float(dia[nums][3]);
      float hummin = float(dia[nums] [9]);
      float hummed = float(dia[nums] [8]);
      float hummax = float(dia[nums] [7]);
      float maxvis = float(dia[nums] [13]);
      float minvis = float(dia[nums] [15]);

      float maxviento = float(dia[nums] [16]);
      float minviento = float(dia[nums] [17]);
      float maxpresion = float(dia[nums] [10]);
      float minpresion = float(dia[nums] [12]);
    
      seoul(x1, y1, fecha, hummax, hummed, hummin, tempmin, tempmed, tempmax, maxvis, minvis, maxviento, minviento, maxpresion, minpresion);
    }
    }
  }
   
endRecord();
 exit();
 
 
}