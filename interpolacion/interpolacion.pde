float x0, x1;
float T;
void setup() {
  size(1000, 1000);
  x0 = 100.0f;
  x1 = 900.0f;
  T = 5.0f;
}

void draw() {
  background(250);
  float x;
  float t = millis()/1000.0f;
  x = Escalon(x0, x1, t/T);
  Dibujar(x0, x1, t, x, 90, "Escalon");
  
  x = Lineal(x0, x1, t/T);
  Dibujar(x0, x1, t, x, 140, "Lineal");
}
