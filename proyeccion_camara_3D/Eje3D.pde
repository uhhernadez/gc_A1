 class Eje3D {
  Eje3D() {
    
  }
  
  void Dibujar() {
    float l = 80;
    
    stroke(255, 0, 0);
    line(0, 0, 0, l, 0, 0);
    
    stroke(0, 255, 0);
    line(0, 0, 0, 0, l, 0);
    
    stroke(0, 0, 255);
    line(0, 0, 0, 0, 0, l);
  }

}
