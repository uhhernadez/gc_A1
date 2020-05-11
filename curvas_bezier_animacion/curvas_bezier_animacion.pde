Bezier b;
SusanaDistancia susana;

void setup() {
  size(1000, 1000);
  b = new Bezier(0.01);
  b.p0_.set(200, -200);
  b.p1_.set(200, -200);
  b.p2_.set(-200, 200);
  b.p3_.set(-200, 200);
  susana = new SusanaDistancia();
}

void draw() {
  background(200);
  translate(width/2, height/2);
  
   susana.Dibujar();
  //b.p1_.y += 0.5;
  //b.p2_.y -= 0.5;
  //b.Dibujar();
}
