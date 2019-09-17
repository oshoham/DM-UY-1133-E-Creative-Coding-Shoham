// You can use else if statements to test against multiple mutually exclusive conditions.
// You don't need an else statement to use else if statements, but you do need an if statement.

void setup() {
  size(500, 500);
}

void draw() {
  background(50);
  noStroke();
  fill(255);

  int centerX = width / 2;
  int diameter = width / 4;

  // if the mouse is in the upper third of the window
  if (mouseY < height / 3) {
    // draw a circle near the top of the window
    ellipse(centerX, height / 5, diameter, diameter);
  }
  // otherwise, if the mouse is in the middle third of the window
  else if (mouseY < height * 2 / 3) {
    // draw a circle in the middle of the window
    ellipse(centerX, height / 2, diameter, diameter);
  }
  // otherwise, if the mouse is in the bottom third of the window
  else {
    // draw a circle near the bottom of the window
    ellipse(centerX, height * 4 / 5, diameter, diameter);
  }
}
