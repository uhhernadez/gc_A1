class Cardiode {
  float a_;
  float dphi_;
  Cardiode() {
    a_ = 100;
    dphi_ = radians(60.0);
  }
  
  void Dibujar() {
    noFill();
    strokeWeight(2);
    beginShape();
    for(float phi = 0.0; phi <= 2*PI ; phi+=dphi_) {
      float amplitud = 2 * a_ * (1 - cos(phi));
      float x = amplitud * cos(phi);
      float y = amplitud * sin(phi);
      vertex(x, y);
    }
    endShape();
  }
}
