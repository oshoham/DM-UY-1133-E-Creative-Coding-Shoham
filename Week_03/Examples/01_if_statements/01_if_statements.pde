// An if statement lets you run blocks of code only when certain conditions are met.
// These conditions must be boolean expressions that evaluate to true or false.

void setup() {
  size(500, 500);
  // this tells Processing to interpet the x,y coordinates passed to rect() as the center of the rectangle
  rectMode(CENTER);
}

void draw() {
  background(200);

  // draw a rectangle if the mouse is in the lower half of the window
  if (mouseY > height / 2) {
    // this code will only run if the expression (mouseY > height / 2) is true
    rect(width / 2, height / 2, width / 2, height / 2);
  }
}
