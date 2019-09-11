// We can animate our previous drawing tool sketch by creating some global variables
// and changing their values in the draw() loop.

// any variable declared outside of setup() or draw() like this is called a global variable
float red = 0.0;
float green = 0.0;
float blue = 0.0;
float circleSize = 0.0;

void setup() {
  size(500, 500);
}

void draw() {
  stroke(0);

  // sin is a math function that takes a number (an angle) and returns a number between -1 and 1
  // it's useful for animation because it can turn an ever-increasing number into an oscillating number
  // here, we're animating the red, green, and blue values of a color by taking the sin() of our variables
  float currentRed = 150 + sin(red) * 100;
  float currentBlue = 100 + sin(green) * 125;
  float currentGreen = 50 + sin(blue) * 200;
  fill(currentRed, currentBlue, currentGreen);

  // we can also animate the size of the circle using the same technique
  float currentCircleSize = 75 + sin(circleSize) * 50;
  ellipse(mouseX, mouseY, currentCircleSize, currentCircleSize);

  // here, we're adding a small amount to each of our variables every time the draw() loop runs
  // we can do this by using the current value of the variable as a value in the expression on the right hand side
  red = red + 0.5;
  green = green + 0.2;
  blue = blue + 0.1;

  // += is a shorthand that means "add to the current value of this variable"
  circleSize += 0.01;
}
