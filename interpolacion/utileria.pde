float Escalon(float x_0, float x_1, float t) {
  return (t < 0.5f)? x_0 : x_1; 
}

float Lineal(float x_0, float x_1, float t) {
  float x = x_0 + t *(x_1 - x0);
  return x;
}


void Dibujar(float x_0, float x_1, float t, float x, float y, String metodo) {
  noFill();
  circle(x_0, y, 20);
  circle(x_1, y, 20);
  fill(0, 255, 0);
  circle(x, y, 20);
  fill(255,0,0);
  text(t, x, y);
  fill(0);
  text(metodo,x0-60, y);
}
