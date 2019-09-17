// Processing has a built-in variable called mousePressed which is true when any mouse button
// is currently being pressed. You can use mousePressed to add click interactions to your sketches.

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(232, 226, 201);
  noStroke();
  fill(75, 106, 125);

  // draw a rectangle if a mouse button is being clicked or held down
  if (mousePressed) {
    rect(width / 2, height / 2, width / 2, height / 2);
  }
}
