Eje3D eje;
float x;
float y;
float z;

float theta_x;
float theta_y;
float theta_z;

void setup() {
  size(1000, 1000, P3D);
  eje = new Eje3D();
  x = 30; y = 40; z = 50;
  theta_x = 0.0; theta_y = 0.0; theta_z = 0.0;
}

void draw() {
  background(200);
  eje.Dibujar();
  camera(100, 100, 100,
         0, 0, 0,
        0, 0, -1);
  scale(0.5);
  rotateZ(theta_z);
  translate(x, y, z);
  eje.Dibujar();
  stroke(0);
  box(30);
  
  rotateX(theta_x);
  translate(x, y, z);
  eje.Dibujar();
  stroke(0);
  sphere(30);
  
  rotateY(theta_y);
  translate(x, y, z);
  eje.Dibujar();
  stroke(0);
  sphere(30);
  
  //x+= 0.1;
  //y+= 0.1;
  //z+= 0.1;
  theta_x += 0.1;
  theta_y += 0.1;
  theta_z += 0.1;
}
