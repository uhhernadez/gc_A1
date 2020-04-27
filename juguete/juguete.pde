PShape base, brick2;
Eje3D eje;
float x_i, y_i, z_i;

void setup() {
  size(1000, 1000,P3D);
  base = loadShape("base.obj");
  brick2 = loadShape("brick2.obj");
  eje = new Eje3D(100);
  x_i = random(-30,30);
  y_i = random(-30,30);
  z_i = random(-30,30);
}

void draw() {
  background(0);
  eje.Dibujar();
  lights();
  shape(base);
  
  float t = millis()/1000.0;
  t = (t > 10)?10:t;
  float x = lerp(x_i, 7.5, t/10);
  float y = lerp(y_i, 30, t/10);
  float z = lerp(z_i, 7.5, t/10);
  pushMatrix();
    translate(x, y, z);
    shape(brick2);
  popMatrix();
  
  //float f = 0.1;
  //float x = 60 * cos(2*PI*f*t);
  //float y = 60 * sin(2*PI*f*t);
  //camera(x,y,60, 0,0, 0, 0, 0, -1);
 
  camera(0,70,30, 0,0, 0, 0, 0, -1);
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), 
              10.0, cameraZ*10.0);
}
