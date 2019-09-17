// You can have multiple if statements in your code that check for different conditions.

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(230, 206, 187);
  noStroke();

  // draw a rectangle if the mouse is in the lower half of the window
  if (mouseY > height / 2) {
    fill(185, 182, 38);
    rect(width / 2, height / 2, width / 2, height / 2);
  }

  // draw a circle if the mouse is in the right half of the window
  if (mouseX > width / 2) {
    fill(188, 200, 188);
    ellipse(width / 2, height / 2, width / 3, height / 3);
  }
}
