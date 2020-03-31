Cubo3D cubo;

void setup() {
  size(512,512);
  cubo = new Cubo3D();
  //cubo.RotarX(radians(45.0));
  cubo.Trasladar(new PVector(0,0,50));
}

void draw() {
  background(200);
  translate(200, 256);
  //float t = millis()/1000.0;  
  
  //cubo.RotarY(radians(1.0));
  //cubo.Trasladar(new PVector(0,0,1));
  //cubo.RotarY(radians(1.0));
  //cubo.RotarZ(radians(1.0));
  //cubo.Trasladar(new PVector(1,0,0));
  //cubo.Trasladar(new PVector(0,1,0));
  //cubo.Trasladar(new PVector(0,0,1));
  cubo.DibujarPerspectiva();
  translate(100, 0);
  cubo.DibujarOrtografico();
}
