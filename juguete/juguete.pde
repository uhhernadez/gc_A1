PShape base, brick1;

void setup() {
  size(1000, 1000,P3D);
  base = loadShape("base.obj");
  brick1 = loadShape("brick1.obj");
}

void draw() {
  background(0);
  lights();
  scale(1);
  shape(base);
  shape(brick1);
  camera(60,60,60, 0,0, 0, 0, 0, -1);
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), 
              10.0, cameraZ*10.0);
}
