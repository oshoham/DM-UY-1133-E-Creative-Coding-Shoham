// You can also nest an if statement inside another if statement. The inner if statement will only
// run if the outer if statement's condition evaluates to true.

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(186, 203, 205);
  noStroke();

  // draw a rectangle if the mouse is in the lower half of the window
  if (mouseY > height / 2) {
    fill(191, 103, 73);
    rect(width / 2, height / 2, width / 2, height / 2);

    // draw a circle if the mouse is in the right half of the window
    // AND the mouse is in the lower half of the window
    if (mouseX > width / 2) {
      fill(112, 59, 38);
      ellipse(width / 2, height / 2, width / 3, height / 3);
    }
  }
}
