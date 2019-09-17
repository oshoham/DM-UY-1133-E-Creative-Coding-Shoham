// This example uses an if/else statement to draw a face that opens its mouth when you press a mouse button.

void setup() {
  size(500, 500);
}

void draw() {
  background(50);
  stroke(255);
  strokeWeight(8);
  noFill();

  int eyeSize = 40;
  int mouthHeight = 50;

  // draw the eyes
  ellipse(width * 3 / 8, height * 3 / 8, eyeSize, eyeSize);
  ellipse(width * 5 / 8, height * 3 / 8, eyeSize, eyeSize);

  // if a mouse button is pressed, draw a rectangle for the mouth
  if (mousePressed) {
    rect(width * 1/ 4, height * 5 / 8, width / 2, mouthHeight);
  }
  // otherwise, draw a line for the mouth
  else {
    line(width * 1/ 4, height * 11 / 16, width * 3 / 4, height * 11 / 16);
  }
}
