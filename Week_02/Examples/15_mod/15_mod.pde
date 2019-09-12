// Use the mod operator (%) to loop a frameCount-based animation. The mod operator creates animation
// loops with that suddenly jump back to the beginning.

// 0 % 5 = 0
// 1 % 5 = 1
// 2 % 5 = 2
// 3 % 5 = 3
// 4 % 5 = 4
// 5 % 5 = 0
// 6 % 5 = 1
// 7 % 5 = 2

void setup() {
  size(500, 500);
}

void draw() {
  background(200);

  // we can increase or decrease the speed variable to control how fast the circle moves
  float speed = 2;
  int circleSize = 50;

  stroke(0);
  fill(255);
  // the mod operator will loop back to 0 when (frameCount * speed) > width
  ellipse((frameCount * speed) % width, height / 2, circleSize, circleSize);
}
