// constrain() clamps a value between a minimum and a maximum

// this sketch was adapted from the p5.js documentation: https://p5js.org/reference/#/p5/constrain

void setup() {
  size(500, 500);
}

void draw() {
  background(200);

  int leftWall = width / 4;
  int rightWall = width * 3 / 4;

  // draw vertical lines to indicate the x positions of leftWall and rightWall
  stroke(150);
  line(leftWall, 0, leftWall, height);
  line(rightWall, 0, rightWall, height);

  // mouseX cannot be smaller than leftWall or larger than rightWall
  int mouseXConstrained = constrain(mouseX, leftWall, rightWall);

  // show the full range of mouseX
  noStroke();
  fill(150);
  ellipse(mouseX, height / 3, 50, 50);

  // show the constrained range
  fill(0);
  ellipse(mouseXConstrained, height * 2 / 3, 50, 50);
}
