PShape modelo;

void setup() {
  size(800, 800, P3D);
  modelo = loadShape("z3.obj");
}

void draw() {
  shape(modelo);
}
