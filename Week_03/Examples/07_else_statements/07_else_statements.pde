// An else statement will run a block of code if the corresponding if statement's condition
// evaluated to false. You can't use an else statement without an if statement.

void setup() {
  size(500, 500);
}

void draw() {
  background(50);
  noStroke();
  fill(255);

  // if the mouse is in the upper half of the window, draw a circle in the upper half
  if (mouseY < height / 2) {
    ellipse(width / 2, height / 4, width / 3, width / 3);
  }
  // otherwise, draw a circle in the lower half of the screen
  // this is the same as: if (mouseY >= height / 2)
  else {
    ellipse(width / 2, height * 3 / 4, width / 3, width / 3);
  }
}
