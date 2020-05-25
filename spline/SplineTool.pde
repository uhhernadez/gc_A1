import Jama.*;

class Spline {
  ArrayList<PVector> pts_;
  PVector p0_;
  PVector p1_;
  PVector p2_;
  float dt_;
  
  Spline(float dt) {
    p0_ = new PVector();
    p1_ = new PVector();
    p2_ = new PVector();
    dt_ = dt;
    pts_ = new ArrayList<PVector>();
  }
  
  void Calcular() {
    float a11 = 2.0f / (p1_.x - p0_.x);
    float a12 = 1.0f / (p1_.x - p0_.x);
    
    float a21 = 1.0f / (p1_.x - p0_.x);
    float a22 = 2.0f * ((1.0f/(p1_.x - p0_.x))
                       +(1.0f/(p2_.x - p1_.x)));
    float a23 = 1.0f / (p2_.x - p1_.x);                   
    
    float a32 = 1.0f / (p2_.x - p1_.x);
    float a33 = 2.0f / (p2_.x - p1_.x);
    
    float diff_x1x0 = (p1_.x - p0_.x) * (p1_.x - p0_.x);
    float diff_x2x1 = (p2_.x - p1_.x) * (p2_.x - p1_.x);
    
    float b1 = 3.0f * ((p1_.y - p0_.y) / diff_x1x0 );
    
    float b2 = 3.0f * ((p1_.y - p0_.y)/ diff_x1x0 
                    +  (p2_.y - p1_.y)/ diff_x2x1);
    float b3 = 3.0f * ((p2_.y - p1_.y)/ diff_x2x1);                
    
    double [][] arreglo_A = {{a11, a12, 0.0},
                             {a21, a22, a23},
                             {0.0, a32, a33}};
    
    double [][] arreglo_b = {{b1},
                             {b2},
                             {b3}};
    Matrix A = new Matrix(arreglo_A);
    Matrix b = new Matrix(arreglo_b);
    Matrix k = A.solve(b);
    
    double a_1 = k.get(0,0) * (p1_.x - p0_.x) - (p1_.y - p0_.y);
    double b_1 = -k.get(1,0) * (p1_.x - p0_.x) + (p1_.y - p0_.y);
    double a_2 = k.get(1,0) * (p2_.x - p1_.x) - (p2_.y - p1_.y);
    double b_2 = -k.get(2,0) * (p2_.x - p1_.x) + (p2_.y - p1_.y);
    
    pts_.clear();
    
    for (float x = p0_.x; x <= p1_.x; x+= dt_) {
      float t = (x - p0_.x)/(p1_.x-p0_.x);
      float alpha = 1.0 - t;
      double y = alpha * p0_.y + t * p1_.y + t*alpha*(alpha* a_1 + t * b_1);
      pts_.add(new PVector((float)x, (float)y));
    }
    
     for (float x = p1_.x; x <= p2_.x; x+= dt_) {
      float t = (x - p1_.x)/(p2_.x-p1_.x);
      float alpha = 1.0 - t;
      double y = alpha * p1_.y + t * p2_.y + t*alpha*(alpha* a_2 + t * b_2);
      pts_.add(new PVector((float)x, (float)y));
    }
  }
  
  void Dibujar() {
    strokeWeight(2);
    noFill();
    beginShape();
      for (PVector p: pts_) {
        vertex(p.x, p.y);
      }
    endShape();
    fill(240, 0, 0);
    circle(p0_.x, p0_.y, 10);
    circle(p1_.x, p1_.y, 10);
    circle(p2_.x, p2_.y, 10);
  }


}
