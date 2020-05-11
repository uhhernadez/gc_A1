class SusanaDistancia {
  ImgAux brazo_izq;
  ImgAux brazo_der;

  ImgAux pierna_der;
  ImgAux pierna_izq;

  ImgAux cabeza;
  ImgAux cuerpo;

  SusanaDistancia() {
    brazo_izq = new ImgAux("brazo_izquierdo.png", 0, 50);
    brazo_der = new ImgAux("brazo_derecho.png", 495, 50);
    pierna_der = new ImgAux("pierna_derecha.png", 200, 0);
    pierna_izq = new ImgAux("pierna_izquierda.png", 2, 0);
    cabeza = new ImgAux("cabeza.png", 205.5, 385);
    cuerpo = new ImgAux("cuerpo.png", 96, 300);
  }

  void Dibujar() {
    scale(0.5);
    pushMatrix();
    DibujarCabeza();
    cuerpo.Dibujar();
    DibujarBrazoIzq();
    DibujarBrazoDer();
    DibujarPiernaIzq();
    DibujarPiernaDer();
    popMatrix();
  }

  void DibujarCabeza() {
    float t = millis()/1000.0;
    float r = 10 * cos(2*PI*t);
    pushMatrix();
    translate(0, -290) ;
    rotate(radians(r));
    cabeza.Dibujar();
    popMatrix();
  }
  
  void DibujarBrazoIzq() {
    pushMatrix();
      translate(65, -210);
      brazo_izq.Dibujar();
    popMatrix();
  }
  
  void DibujarBrazoDer() {
    pushMatrix();
      translate(-65, -210);
      brazo_der.Dibujar();
    popMatrix();
  }
  
  void DibujarPiernaIzq() {
    pushMatrix();
      translate(18, 120);
      pierna_izq.Dibujar();
    popMatrix();
  }
  
  void DibujarPiernaDer() {
    pushMatrix();
      translate(-18, 120);
      pierna_der.Dibujar();
    popMatrix();
  }
}
