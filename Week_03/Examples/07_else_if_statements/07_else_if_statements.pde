void setup() {
  size(500, 500);
}

void draw() {
  background(50);
  noStroke();
  fill(255);

  int centerX = width / 2;
  int diameter = width / 4;

  if (mouseY < height / 3) {
    ellipse(centerX, height / 5, diameter, diameter);
  } else if (mouseY < height * 2 / 3) {
    ellipse(centerX, height / 2, diameter, diameter);
  } else {
    ellipse(centerX, height * 4 / 5, diameter, diameter);
  }
}
