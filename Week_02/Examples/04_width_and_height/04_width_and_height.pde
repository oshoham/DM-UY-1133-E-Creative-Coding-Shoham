// Processing has some built-in variables that will help you develop your sketches.
// Two really useful variables are width and height, which store the horizontal
// and vertical size of your sketch window.

void setup() {
  size(500, 500);
}

void draw() {
  background(200);

  // width and height can only be used inside of Processing functions like setup() and draw()
  int centerX = width / 2;
  int centerY = height / 2;

  // this will draw a circle in the center of the window,
  // with a size proportional to the width of the sketch window
  int ellipseSize = width / 3;
  ellipse(centerX, centerY, ellipseSize, ellipseSize);
}
