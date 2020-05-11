class Eje3D {
  float largo_;
  Eje3D(float largo) {
    largo_ = largo;
  }

  void Dibujar() {
    stroke(255, 0 ,0);
    line(0,0,0, largo_, 0, 0);
    stroke(0, 255 ,0);
    line(0,0,0, 0, largo_, 0);
    stroke(0 , 0, 255);
    line(0,0,0, 0, 0, largo_);
  }
}
