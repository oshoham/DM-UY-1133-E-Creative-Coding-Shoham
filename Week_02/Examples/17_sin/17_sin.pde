// Use the sin() function to create animations that loop like a palindrome.

void setup() {
  size(500, 500);
}

void draw() {
  background(200);

  float speed = 0.05;
  float circleSize = 50;

  // we know that sin() outputs values in the range -1 to 1, so we can use map() to change that range
  // to whatever we want, e.g., the horizontal dimensions of our sketch window
  float x = map(sin(frameCount * speed), -1, 1, 0, width);

  ellipse(x, height / 2, circleSize, circleSize);
}
