// map() converts a value from an input range to an output range

void setup() {
  size(500, 500);
}

void draw() {
  // mouseX is being mapped from the range 0 - width to the range 0 - 255
  float r = map(mouseX, 0, width, 0, 255);
  float b = map(mouseY, 0, height, 255, 0);

  // use the mapped x and y values to set the background color
  background(r, 0, b);
}
