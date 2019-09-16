void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(230, 206, 187);
  noStroke();

  if (mouseY > height / 2) {
    fill(185, 182, 38);
    rect(width / 2, height / 2, width / 2, height / 2);
  }

  if (mouseX > width / 2) {
    fill(188, 200, 188);
    ellipse(width / 2, height / 2, width / 3, height / 3);
  }
}
