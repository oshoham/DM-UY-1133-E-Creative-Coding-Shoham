// && is a boolean operator that will only evaluate to true if both of its operands
// (the expressions to the left and right of the && operator) evaluate to true.
// In this example, we're using the && operator to check whether the mouse's position
// is inside the bounds of a rectangle.

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(255);
  noStroke();

  int centerX = width / 2;
  int centerY = height / 2;
  int rectWidth = width / 3;
  int rectHeight = height / 3;

  // check whether the mouse's x position is to the right of the rectangle's left wall
  // AND to the left of the rectangle's right wall
  boolean isMouseInsideRectX = mouseX > centerX - rectWidth / 2 && mouseX < centerX + rectWidth / 2;
  // check whether the mouse's y position is below of the rectangle's top wall
  // AND above the rectangle's bottom wall
  boolean isMouseInsideRectY = mouseY > centerY - rectHeight / 2 && mouseY < centerY + rectHeight / 2;

  // color the rectangle blue if the mouse's position is inside the bounds of the rectangle
  if (isMouseInsideRectX && isMouseInsideRectY) {
    fill(0, 0, 255);
  }
  // otherwise, color the rectangle red
  else {
    fill(255, 0, 0);
  }
  rect(centerX, centerY, rectWidth, rectHeight);
}
