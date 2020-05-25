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
  
  x = Coseno(x0, x1, t/T);
  Dibujar(x0, x1, t, x, 190, "Coseno");
  
  x = EscalonSuave(x0, x1, t/T);
  Dibujar(x0, x1, t, x, 240, "EscalonSuave");
  
  x = Aceleracion(x0, x1, t/T);
  Dibujar(x0, x1, t, x, 290, "Aceleracion");
  
  x = Desaceleracion(x0, x1, t/T);
  Dibujar(x0, x1, t, x, 340, "Desaceleracion"); 
  
  x = lerp(x0, x1, t/T);
  Dibujar(x0, x1, t, x, 390, "Lerp");
  
}
