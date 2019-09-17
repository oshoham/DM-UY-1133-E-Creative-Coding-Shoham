// Processing has a built-in variable called keyPressed which is true when any key on the keyboard
// is currently being pressed. Another built-in variable called key contains the character value
// of the key on the keyboard that was most recently pressed.

void setup() {
  size(500, 500);
}

void draw() {
  background(232, 226, 201);
  noStroke();
  fill(249, 187, 79);

  // draw a circle if a key is currently being pressed AND that key is the 'c' key
  if (keyPressed) {
    if (key == 'c') { // 'c' is a char (short for character), not a String
      ellipse(width / 2, height / 2, width / 3, height / 3);
    }
  }
}
