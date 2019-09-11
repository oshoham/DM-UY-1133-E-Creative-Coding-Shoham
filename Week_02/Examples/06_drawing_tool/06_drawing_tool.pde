// If we draw a shape using mouseX and mouseY as the position and don't call
// background() in our draw() loop to clear the sketch window each frame,
// we can make a simple drawing tool.

void setup() {
  size(500, 500);
}

void draw() {
  //background(200);

  int ellipseSize = 50;

  ellipse(mouseX, mouseY, ellipseSize, ellipseSize);
}
