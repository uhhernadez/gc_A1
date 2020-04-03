Eje3D eje;
PShape modelo;

void setup() {
  size(800, 800, P3D);
  eje = new Eje3D();
  modelo = loadShape("z3.obj");
}

void draw() {
  camera(100, 100, 100,
         0, 0, 0,
         0, 0, -1);
  eje.Dibujar();
  shape(modelo);
}
