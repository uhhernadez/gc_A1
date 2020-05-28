void setup() {
  size(500, 500);
}

void draw() {
  float a = 249.9;
  float b = 100;
  translate(width/2, height/2);
  problema1 (a, b, radians(1.0), 20*PI);
  String msg = "k="+ str(a/b);
  fill(255, 0, 0);
  textSize(20);
  text(msg,-width/2, -height/2+30);
}

void problema1 (float a, float b, float dt, float ltheta) {
  noFill();
  beginShape();
  for(float t = 0.0; t < ltheta; t+=dt) {
    float x = (a - b)* cos(t) + b*cos(t * (a/b-1));
    float y = (a - b)* sin(t) - b*sin(t * (a/b-1));
    vertex(x,y);
  }
  endShape();
}
