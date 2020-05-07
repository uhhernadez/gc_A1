float t;
Eje3D eje;
void setup() {
  size(1000, 1000, P3D);
  t = 0 ;
  eje = new Eje3D();
}

void draw() {
  background(200);
  eje.Dibujar();
  box(10);
  float a = 12;
  float b = 50;
  float m = 10;
  float bz = - 10;

  float xc = (a + b * t ) * cos(t);
  float yc = (a + b * t ) * sin(t);
  float zc = m * t + bz;
  camera(xc, yc, zc, 
         0, 0, 0, 
         0, 0, -1);
  float fov = PI/3.0;
  perspective(fov, float(width)/float(height), 
    0.1, 10000);
  t += radians(1);
  t = (t > 2*PI)? 0: t;
}
