void setup() {
  size(500, 500);
}

void draw() {
  float k = 10;
  translate(width/2, height/2);
  problema4 (k, 20, radians(1.0), 20*PI);
  String msg = "k="+ str(k);
  fill(255, 0, 0);
  textSize(20);
  text(msg,-width/2, -height/2+30);
}

void problema4 (float k, float r , float dt, float ltheta) {
  noFill();
  beginShape();
  for(float t = 0.0; t < ltheta; t+=dt) {
    float x = r*(k-1)* cos(t) + r*cos((k-1)*t);
    float y = r*(k-1)* sin(t) - r*sin((k-1)*t);
    vertex(x,y);
  }
  endShape();
}
