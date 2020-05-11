class Bezier {
  PVector p0_;
  PVector p1_;
  PVector p2_;
  PVector p3_;
  float dt_;
  
  Bezier(float dt) {
    p0_ = new PVector();
    p1_ = new PVector();
    p2_ = new PVector();
    p3_ = new PVector();
    dt_ = dt;
  }
  
  void Dibujar() {
    strokeWeight(2);
    noFill();
    beginShape();
      for(float t = 0; t <= 1.0; t += dt_) {
        float a = (1 - t) * (1 - t) * (1 -t);
        float b = 3 * t * (1 - t) * (1 - t);
        float c = 3 * t * t * (1 -t);
        float d = t * t * t;
        
        float x = p0_.x * a + p1_.x * b + p2_.x * c + p3_.x * d;
        float y = p0_.y * a + p1_.y * b + p2_.y * c + p3_.y * d;
        vertex(x,y);
      }
    endShape();
    fill(230);
    DibujarNodos(p0_, 10);
    DibujarNodos(p1_, 10);
    DibujarNodos(p2_, 10);
    DibujarNodos(p3_, 10);
    DibujarLinea(p0_, p1_);
    DibujarLinea(p2_, p3_);
  }
  
  void DibujarNodos(PVector p, float r) {
    circle(p.x, p.y, r);
  }
  
  void DibujarLinea(PVector a, PVector b) {
    line(a.x, a.y, b.x, b.y);
  }
  
}
