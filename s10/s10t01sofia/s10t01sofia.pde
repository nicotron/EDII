//UDD-Expresión Digital
//s10t01Sofia
//Base de datos de Shanghai con 8 variables 

String datos []; //lista con un elemento
String dia[] []; //lista con dos elementos

color s1 = color(132, 190, 211); 
color s2 = color(34, 189, 132); 

int i;

String fecha;
float temmax, viento, temmix, hummed, hummax, hummin, temmed;

void setup() {
  size(500, 500);
  smooth();
  datos = loadStrings("shanghaiweather.csv"); //archivo con los datos
  dia = new String[datos.length] [22]; 
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(","); 
  }
  i = 0;
}

void draw() {
  background(255);
  fecha = dia[i][0];
  temmax = float(dia[i][1]);
  viento = float(dia[i][17]);
  temmix = float(dia[i][3]);
  hummed = float(dia[i][8]);
  hummax = float(dia[i][7]);
  hummin = float(dia[i][9]);
  temmed = float(dia[i][2]);

  fn(fecha, temmax, viento, temmix, hummed, hummax, hummin, temmed);
  //asignar los valores de la base de datos a ,s argumentos de la funcion
}


void keyPressed() {
  if (key == ' ') {
    i ++;
    //cambia de dia, no se usa el for loop
  }
  if (key == 'a') {
    i --;
    //cambia de dia, no se usa el for loop
  }
}