int eyeSize = 40;
int mouthHeight = 50;

void setup() {
  size(500, 500);
}
void draw() {
  background(50);
  stroke(255);
  strokeWeight(8);
  noFill();

  ellipse(width * 3 / 8, height * 3 / 8, eyeSize, eyeSize);
  ellipse(width * 5 / 8, height * 3 / 8, eyeSize, eyeSize);
  if (mousePressed) {
    rect(width * 1/ 4, height * 5 / 8, width / 2, mouthHeight);
  }
  else {
    line(width * 1/ 4, height * 11 / 16, width * 3 / 4, height * 11 / 16);
  }
}
