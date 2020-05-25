Spline spline;
void setup(){
  spline = new Spline(0.01);
  spline.p0_.set(10, 10);
  spline.p1_.set(50, 80);
  spline.p2_.set(90, 10);
  spline.Calcular();
}

void draw() {
 spline.Dibujar();
}
