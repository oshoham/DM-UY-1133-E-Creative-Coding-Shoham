void setup() {
  size(500, 500);
}

void draw() {
  background(50);
  noStroke();
  fill(255);

  if (mouseY < height / 2) {
    ellipse(width / 2, height / 4, width / 3, width / 3);
  } else {
    ellipse(width / 2, height * 3 / 4, width / 3, width / 3);
  }
}
