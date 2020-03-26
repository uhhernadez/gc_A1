PVector [] cubo;

PVector Multiplica3x3PV(float [][] P, PVector p) {
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

float [][] Rx(float theta) {
  float [][] rx = {
    {1, 0, 0},
    {0, cos(theta), -sin(theta)},
    {0, sin(theta), cos(theta)}
  };
  return rx;
}

float [][] Ry(float theta) {
  float [][] ry = {
    {cos(theta), 0, sin(theta)},
    { 0, 1 , 0 },
    {-sin(theta), 0, cos(theta) }
  };
  return ry;
}

float [][] Rz(float theta) {
  float [][] rz = {
    {cos(theta), -sin(theta), 0},
    {sin(theta), cos(theta), 0},
    {0, 0, 1}
  };
  return rz;
}

void draw() {
  background(200);
  translate(256, 256);
  float [][] P = {
    {1, 0, 0},
    {0, 1, 0},
    {0, 0, 0}
  };
  float theta = millis()/1000.0f;
  float [][] rx = Rx(theta);
  float [][] ry = Ry(2*theta);
  float [][] rz = Rz(4*theta);
  
  for (PVector c3D : cubo) {
    PVector rc3D = Multiplica3x3PV(rz, c3D);
    PVector c2D = Multiplica3x3PV(P, rc3D);
    ellipse(c2D.x, c2D.y, 10, 10);
  } 
}
