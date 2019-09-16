void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(232, 226, 201);
  noStroke();

  if (mousePressed) {
    fill(75, 106, 125);
    rect(width / 2, height / 2, width / 2, height / 2);
  }

  if (keyPressed) {
    if (key == 'c') {
      fill(249, 187, 79);
      ellipse(width / 2, height / 2, width / 3, height / 3);
    }
  }
}
