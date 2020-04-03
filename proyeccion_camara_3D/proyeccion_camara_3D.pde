Eje3D eje;
PShape modelo;

void setup() {
  size(800, 800, P3D);
  eje = new Eje3D();
  modelo = loadShape("lego.obj");
  //modelo.scale(2);
}

void draw() {
  background(240);
  lights();
  camera(100, 100, 100,
         0, 0, 0,
         0, 0, -1);
           
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), 
              cameraZ/10.0, cameraZ*10.0);
   
  
  //ortho(-width/8, width/8, -height/8, height/8);             
  eje.Dibujar();
  //modelo.rotateX(radians(1));
  //modelo.rotateY(radians(1));
  pushMatrix();
    //modelo.translate(0,0,1);   
    //rotateZ(radians(90));
    //translate(20,0,0);
    scale(0.5);
    shape(modelo);
  popMatrix();
}
