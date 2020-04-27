float Ax;
float Ay;
void setup() {
  size(1000, 1000);
  Ax = 100;
  Ay = 50;
}

void draw() {
  translate(width/2.0, height/2.0);
  float dt = radians(10);
  
  for (float theta = 0; theta < radians(360); theta = theta + dt) {
    float x = Ax * cos(theta);
    float y = Ay * sin(theta);
    circle(x, y, 10);
  }
}
