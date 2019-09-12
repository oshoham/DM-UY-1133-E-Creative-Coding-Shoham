// Use frameCount to draw a circle that moves horizontally across the screen.
// frameCount is a built-in variable in processing that stores how many times the draw() loop has run.

void setup() {
  size(500, 500);
  // we can call frameRate() to change how many times per second the draw loop runs - the default is 60
  //frameRate(10);
}

void draw() {
  background(200);

  int circleSize = 50;

  stroke(0);
  fill(255);
  // this circle will start out on the left and move to the right until it disappears
  ellipse(frameCount, height / 2, circleSize, circleSize);
}
