// Draw a pair of eyes with pupils that follow the mouse around the screen.

void setup() {
  size(500, 500);
}

void draw() {
  background(200);
  noStroke();

  // create variables for the left and right eye positions and the size of the two eyeballs
  int leftEyeX = 165;
  int leftEyeY = height /2;
  int rightEyeX = 335;
  int rightEyeY = height / 2;
  int eyeBallSize = 150;

  // draw the eyeballs
  fill(255);
  ellipse(leftEyeX, leftEyeY, eyeBallSize, eyeBallSize);
  ellipse(rightEyeX, rightEyeY, eyeBallSize, eyeBallSize);

  // calculate the x and y positions of the two pupils
  int pupilSize = 30;

  // constrain the left pupil horizontally
  int leftPupilLeftEdge = leftEyeX - eyeBallSize / 2 + pupilSize;
  int leftPupilRightEdge = leftEyeX + eyeBallSize / 2 - pupilSize;
  int leftPupilX = constrain(mouseX, leftPupilLeftEdge, leftPupilRightEdge);

  // constrain the left pupil vertically
  int leftPupilTopEdge = leftEyeY - eyeBallSize / 2 + pupilSize;
  int leftPupilBottomEdge = leftEyeY + eyeBallSize / 2 - pupilSize;
  int leftPupilY = constrain(mouseY, leftPupilTopEdge, leftPupilBottomEdge);

  // constrain the right pupil horizontally
  int rightPupilLeftEdge = rightEyeX - eyeBallSize / 2 + pupilSize;
  int rightPupilRightEdge = rightEyeX + eyeBallSize / 2 - pupilSize;
  int rightPupilX = constrain(mouseX, rightPupilLeftEdge, rightPupilRightEdge);

  // constrain the right pupil vertically
  int rightPupilTopEdge = rightEyeY - eyeBallSize / 2 + pupilSize;
  int rightPupilBottomEdge = rightEyeY + eyeBallSize / 2 - pupilSize;
  int rightPupilY = constrain(mouseY, rightPupilTopEdge, rightPupilBottomEdge);

  // draw the pupils
  fill(0);
  ellipse(leftPupilX, leftPupilY, pupilSize, pupilSize);
  ellipse(rightPupilX, rightPupilY, pupilSize, pupilSize);
}
