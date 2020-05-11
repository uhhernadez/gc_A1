class ImgAux {
  PVector centro;
  PImage img;
  ImgAux (String archivo, float x, float y) {
    img = loadImage(archivo);
    centro = new PVector(x, y);
  }
  
  void Dibujar() {
    pushMatrix();
    image(img, -centro.x, -centro.y);
    circle(0, 0, 10);
    popMatrix();
  }
}
