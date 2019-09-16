void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(186, 203, 205);
  noStroke();

  if (mouseY > height / 2) {
    fill(191, 103, 73);
    rect(width / 2, height / 2, width / 2, height / 2);

    if (mouseX > width / 2) {
      fill(112, 59, 38);
      ellipse(width / 2, height / 2, width / 3, height / 3);
    }
  }
}
