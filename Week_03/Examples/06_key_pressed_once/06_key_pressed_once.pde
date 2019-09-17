// You can use a global boolean variable to make a part of your sketch change permanently once
// a mouse or keyboard interaction has occurred.

// this should be false initially since the 'c' key hasn't been pressed yet
boolean cKeyWasPressed = false;

void setup() {
  size(500, 500);
}

void draw() {
  background(232, 226, 201);
  noStroke();
  fill(249, 187, 79);

  // set cKeyWasPressed to true if a key is currently being pressed AND that key is the 'c' key
  if (keyPressed) {
    if (key == 'c') {
      // it doesn't matter if this line of code runs multiple times
      // after the 1st time, the value of cKeyWasPressed will always be true
      cKeyWasPressed = true;
    }
  }

  if (cKeyWasPressed) {
    ellipse(width / 2, height / 2, width / 3, height / 3);
  }
}
