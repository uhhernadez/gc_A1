Bezier b;
ImgAux brazo_izq;
ImgAux brazo_der;

ImgAux pierna_der;
ImgAux pierna_izq;

ImgAux cabeza;
ImgAux cuerpo;

void setup() {
  size(1000, 1000);
  b = new Bezier(0.01);
  b.p0_.set(200, -200);
  b.p1_.set(200, -200);
  b.p2_.set(-200, 200);
  b.p3_.set(-200, 200);
  brazo_izq = new ImgAux("brazo_izquierdo.png", 0, 50);
  brazo_der = new ImgAux("brazo_derecho.png", 495, 50);
  
  pierna_der = new ImgAux("pierna_derecha.png", 200, 0);
  pierna_izq = new ImgAux("pierna_izquierda.png", 2, 0);
}

void draw() {
  background(200);
  translate(width/2, height/2);
  //rotate(radians(second()));
  //brazo_izq.Dibujar();
  //brazo_der.Dibujar();
  //pierna_der.Dibujar(); 
  pierna_izq.Dibujar(); 
  //b.p1_.y += 0.5;
  //b.p2_.y -= 0.5;
  //b.Dibujar();
}
