void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(255);
  noStroke();

  int centerX = width / 2;
  int centerY = height / 2;
  int w = width / 3;
  int h = height / 3;

  boolean isInsideX = mouseX > centerX - w / 2 && mouseX < centerX + w / 2;
  boolean isInsideY = mouseY > centerY - h / 2 && mouseY < centerY + h / 2;

  if (isInsideX && isInsideY) {
    fill(0, 0, 255);
  } else {
    fill(255, 0, 0);
  }
  rect(centerX, centerY, w, h);
}
