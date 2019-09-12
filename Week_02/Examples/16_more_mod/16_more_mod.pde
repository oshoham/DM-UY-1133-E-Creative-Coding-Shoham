// More mod-based animation.

void setup() {
  size(500, 500);
}

void draw() {
  // try uncommenting the call to background()
  //background(200);

  float movementSpeed = 2;
  float growthSpeed = 0.5;
  float growthSize = 3;
  // we can use variables to control the speed of the animation and the max size of the circle
  float circleSize = (frameCount * growthSpeed % 30) * growthSize;

  stroke(0);
  fill(255);
  ellipse((frameCount * movementSpeed) % width, height / 2, circleSize, circleSize);
}
