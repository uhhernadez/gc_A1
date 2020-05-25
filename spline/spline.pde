Spline spline;
void setup() {
  size(1000, 1000);
  spline = new Spline(0.01);
  spline.p0_.set(-400, 10);
  spline.p0_ = new PVector(-400, 10);
  spline.p1_.set(50, 80);
  spline.p2_.set(400, 10);
}

void draw() {
  background(240);
  translate(width/2, height/2);
  spline.Calcular();
  spline.Dibujar();
  //spline.p1_.y+=0.5;
}

void mousePressed() {
   float x = mouseX-width/2;
   float y = mouseY-height/2;
   PVector p = new PVector(x, y);
   
   float p0d = PVector.dist(p,spline.p0_);
   float p1d = PVector.dist(p,spline.p1_);
   float p2d = PVector.dist(p,spline.p2_);
   
   if(p0d < p1d && p0d < p2d) {
     spline.p0_.set(x,y);
   } else if (p1d < p2d && p1d < p0d) {
     spline.p1_.set(x,y);
   } else {
     spline.p2_.set(x,y);
   }
   
   
   
}
