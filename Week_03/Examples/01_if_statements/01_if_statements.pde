void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(200);

  if (mouseY > height / 2) {
    rect(width / 2, height / 2, width / 2, height / 2);
  }
}
