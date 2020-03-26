PVector [] cubo;

PVector Proyeccion(float [][] P, PVector p) {
 PVector xyz = new PVector();
 xyz.x = P[0][0] * p.x + P[0][1] * p.y + P[0][2] *p.z;
 xyz.y = P[1][0] * p.x + P[1][1] * p.y + P[1][2] *p.z;
 xyz.z = P[2][0] * p.x + P[2][1] * p.y + P[2][2] *p.z;
 return xyz;   
}


void setup() {
  size(512,512);
  cubo = new PVector[8];
  cubo[0] = new PVector(25, -25, 25);
  cubo[1] = new PVector(25,  25, 25);
  cubo[2] = new PVector(-25, 25, 25);
  cubo[3] = new PVector(-25, -25, 25);
  
  cubo[4] = new PVector(25, -25, -25);
  cubo[5] = new PVector(25, 25, -25);
  cubo[6] = new PVector(-25, 25, -25);
  cubo[7] = new PVector(-25, -25, -25);
}

void draw() {
  translate(256, 256);
  float [][] P = {
    {1, 0, 0},
    {0, 1, 0},
    {0, 0, 0},
  };
 
  for (PVector c3D : cubo) {
    PVector c2D = Proyeccion(P, c3D);
    ellipse(c2D.x, c2D.y, 5, 5);
  } 
}
