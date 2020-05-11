Bezier b;
SusanaDistancia susana;
int k;

void setup() {
  size(1000, 1000);
  b = new Bezier(0.001);
  b.p3_.set(200, -200);
  b.p2_.set(200, -400);
  b.p1_.set(-200, 200);
  b.p0_.set(-200, -200);
  susana = new SusanaDistancia();
  k = 0;
}

void draw() {
  background(200);
  translate(width/2, height/2);
  //b.Dibujar();
  //k = k % b.puntos_.size();
  //PVector p1 = b.puntos_.get(k);
  //int kn = (k + 1 >= b.puntos_.size())? b.puntos_.size() - 1: k + 1;
  //PVector p2 = b.puntos_.get(kn);
  //translate(p1.x, p1.y);
  //float theta = atan((p2.y - p1.y)/(p2.x - p1.x));
  //rotate(theta);
  susana.Dibujar();
  //b.p1_.y += 0.5;
  //b.p2_.y -= 0.5;
  //
  k++;
}
