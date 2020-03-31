Cubo3D cubo;

void setup() {
  size(512,512);
  cubo = new Cubo3D();
}

void draw() {
  background(200);
  translate(256, 256);
  //float t = millis()/1000.0;  
  cubo.RotarX(radians(1.0));
  //cubo.RotarY(radians(1.0));
  //cubo.RotarZ(radians(1.0));
  cubo.Dibujar();
}
