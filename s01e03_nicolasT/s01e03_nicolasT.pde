// Expresión Digital II
// semana 01 
// ejercicio 03

int a = 0;

void setup(){
  size(400, 400);
  background(127);
}

void draw(){
  line(a, 0, a, height); // crea una linea vertical
  a++; // avanza una vez 
}
