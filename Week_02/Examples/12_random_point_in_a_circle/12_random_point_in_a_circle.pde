// Every frame, draw a point at a random xy position inside of a circle.

// adapted from https://programming.guide/random-point-within-circle.html

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  noStroke();
  fill(0);

  int centerX = width / 2;
  int centerY = height / 2;
  int circleSize = 5;

  // pick a random angle in radians
  float angle = random(2 * PI);
  // pick a random radius (distance from the center)
  // use sqrt(random(1)) to prevent random points from clustering around the center
  float radius = (width / 2) * sqrt(random(1));
  // this is the formula for the x and y coordinates of a point on the edge of a circle,
  // given an angle and a radius
  float x = centerX + radius * cos(angle);
  float y = centerY + radius * sin(angle);

  ellipse(x, y, circleSize, circleSize);
}
