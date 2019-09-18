// the radius of the ball = 1/2 of the diameter
int radius = 25;

// these variables are global because we're going to update their values in the draw() loop
// and we want those changes to persist over time
float xPos;
float yPos;
float xSpeed;
float ySpeed;

void setup() {
  size(500, 500);

  // the ball will start in the middle of the window
  xPos = width / 2;
  yPos = height / 2;

  // randomly choose whether the ball will move to the left (-1) or right (1)
  int xDirection = floor(random(2)) * 2 - 1;
  // randomly choose whether the ball will move up (-1) or down (1)
  int yDirection = floor(random(2)) * 2 - 1;

  // randomly choose how fast the ball will move horizontally and vertically
  xSpeed = random(1.5, 3.0) * xDirection;
  ySpeed = random(1.5, 3.0) * yDirection;
}

void draw() {
  background(200);
  stroke(0);
  fill(255);

  // move the ball horizontally and vertically
  xPos += xSpeed;
  yPos += ySpeed;

  // bounce off the left and right walls of the window
  if (xPos <= radius || xPos >= width - radius) {
    xSpeed *= -1;
  }

  // bounce off the top and bottom walls of the window
  if (yPos <= radius || yPos >= height - radius) {
    ySpeed *= -1;
  }

  // draw the ball, multiplying the radius by 2 to get the diameter
  ellipse(xPos, yPos, radius * 2, radius * 2);
}
