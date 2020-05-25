Spline spline;
void setup() {
  size(1000, 1000);
  spline = new Spline(0.01);
  spline.p0_.set(-400, 10);
  spline.p1_.set(50, 80);
  spline.p2_.set(400, 10);
}

void draw() {
  background(240);
  translate(width/2, height/2);
  spline.Calcular();
  spline.Dibujar();
  spline.p1_.y+=0.5;
}
