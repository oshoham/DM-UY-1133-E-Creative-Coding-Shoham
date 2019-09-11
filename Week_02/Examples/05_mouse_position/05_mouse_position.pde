// Another useful pair of built-in Processing variables is mouseX and mouseY,
// which store the current x and y position of the mouse. You can use these variables
// to make your sketches react the mouse.

void setup() {
  size(500, 500);
}

void draw() {
  background(200);

  int ellipseSize = 50;

  // this will draw a circle that follows the mouse around
  ellipse(mouseX, mouseY, ellipseSize, ellipseSize);
}
