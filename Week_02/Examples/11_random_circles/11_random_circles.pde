// Draw a new circle every frame with a random position, size, and color.

// adapted from the Learning Processing "Random Painting" example: http://learningprocessing.com/examples/chp04/example-04-07-randompainting

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  // the random function takes a maximum possible value as an argument
  // and returns a random number between 0 - max
  float r = random(255);
  float g = random(255);
  float b = random(255);
  float a = random(255);
  // we can also give random() both a minimum and a maximum
  float diameter = random(5, 20);
  float x = random(width);
  float y = random(height);

  noStroke();
  fill(r, g, b, a);

  ellipse(x, y, diameter, diameter);
}
