Eje3D eje;
PShape modelo;

void setup() {
  size(800, 800, P3D);
  eje = new Eje3D();
  modelo = loadShape("z3.obj");
}

void draw() {
  lights();
  camera(100, 100, 100,
         0, 0, 0,
         0, 0, -1);
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), 
              cameraZ/10.0, cameraZ*10.0);
  eje.Dibujar();
  shape(modelo);
}
