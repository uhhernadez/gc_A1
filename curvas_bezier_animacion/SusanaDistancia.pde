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
    float t = millis()/1000.0;
    scale(0.2);
    pushMatrix();
    DibujarCabeza(t, 2, 1.0);
    cuerpo.Dibujar();
    DibujarBrazoIzq(t, 2, 10.0);
    DibujarBrazoDer(t, 2, 10.0);
    DibujarPiernaIzq(t, 2, 45.0);
    DibujarPiernaDer(t, 2, 60.0);
    popMatrix();
  }

  void DibujarCabeza(float t, float f, float A) {
    float r = A * cos(2*PI*f*t);
    pushMatrix();
    translate(0, -290) ;
    rotate(radians(r));
    cabeza.Dibujar();
    popMatrix();
  }

  void DibujarBrazoIzq(float t, float f, float A) {
    float r = A * cos(2*PI*f*t);
    pushMatrix();
    translate(65, -210);
    rotate(radians(r));
    brazo_izq.Dibujar();
    popMatrix();
  }

  void DibujarBrazoDer(float t, float f, float A) {
    float r = A * cos(2*PI*f*t);
    pushMatrix();
    translate(-65, -210);
    rotate(radians(r));
    brazo_der.Dibujar();
    popMatrix();
  }

  void DibujarPiernaIzq(float t, float f, float A) {
    float r = A * sin(2*PI*f*t);
    pushMatrix();
    translate(18, 120);
    rotate(radians(r)+radians(-A));
    pierna_izq.Dibujar();
    popMatrix();
  }

  void DibujarPiernaDer(float t, float f, float A) {
    float r = A * sin(2*PI*f*t);
    pushMatrix();
    translate(-18, 120);
    rotate(radians(-r)+radians(A));
    pierna_der.Dibujar();
    popMatrix();
  }
}
