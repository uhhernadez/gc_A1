Cardiode cardiode;

void setup() {
  size(1000, 1000);
  cardiode = new Cardiode();
}

void draw() {
  background(200);
  translate(width/2.0, height/2.0);
  //float t = millis()/1000.0f;
  //cardiode.a_ = 100 + 20 * cos(2*PI*3*t);
  cardiode.Dibujar();
}
