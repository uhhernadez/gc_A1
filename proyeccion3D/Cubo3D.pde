class Cubo3D {
  PVector [] cubo;
  float [][] P = {
    {1, 0, 0},
    {0, 1, 0},
    {0, 0, 0}
  };
  Cubo3D() {
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

  PVector Multiplica3x3PV(float [][] P, PVector p) {
   PVector xyz = new PVector();
   xyz.x = P[0][0] * p.x + P[0][1] * p.y + P[0][2] *p.z;
   xyz.y = P[1][0] * p.x + P[1][1] * p.y + P[1][2] *p.z;
   xyz.z = P[2][0] * p.x + P[2][1] * p.y + P[2][2] *p.z;
   return xyz;   
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
 
  void RotarX(float theta) {
    float [][] rx = Rx(theta);
    for(int k = 0; k < 8; k++) {
      cubo[k] = Multiplica3x3PV(rx, cubo[k]);
    }
  }
  
  void RotarY(float theta) {
    float [][] ry = Ry(theta);
    for(int k = 0; k < 8; k++) {
      cubo[k] = Multiplica3x3PV(ry, cubo[k]);
    }
  }
  
  void RotarZ(float theta) {
   float [][] rz = Rz(theta);
    for(int k = 0; k < 8; k++) {
      cubo[k] = Multiplica3x3PV(rz, cubo[k]);
    } 
  }
  
  void Dibujar() {
    PVector [] cubo2D = new PVector[8];
    for(int k = 0; k < 8; k++) {
      cubo2D[k] = Multiplica3x3PV(P, cubo[k]);
    }
    DibujarCubo(cubo2D);
  }
  
  void DibujarCubo(PVector [] c) {
     for(PVector p2D : c) {
       ellipse(p2D.x, p2D.y, 10, 10);
     }  
   
    line(c[0].x, c[0].y, c[1].x, c[1].y);
    line(c[1].x, c[1].y, c[2].x, c[2].y);
    line(c[2].x, c[2].y, c[3].x, c[3].y);
    line(c[3].x, c[3].y, c[0].x, c[0].y);
  }  
}
