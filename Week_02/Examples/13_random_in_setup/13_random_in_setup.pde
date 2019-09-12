// Draw two squares with dimensions, positions, and colors that change each time the sketch runs.

// you can use commas to declare multiple variables on one line
float x1, y1;
float w1, h1;
float r1, g1, b1, a1;

float x2, y2;
float w2, h2;
float r2, g2, b2, a2;

void setup() {
  size(500, 500);

  // set width, height, position, and color for 1st square
  w1 = random(50, 200);
  h1 = random(100, 300);
  x1 = random(width - w1);
  y1 = random(height - h1);
  r1 = random(255);
  g1 = random(255);
  b1 = random(255);
  a1 = random(255);

  // set width, height, position, and color for 2nd square
  w2 = random(50, 200);
  h2 = random(100, 300);
  x2 = random(width - w2);
  y2 = random(height - h2);
  r2 = random(255);
  g2 = random(255);
  b2 = random(255);
  a2 = random(255);
}

void draw() {
  background(255);
  noStroke();

  // draw 1st square
  fill(r1, g1, b1, a1);
  rect(x1, y1, w1, h1);

  // draw 2nd square
  fill(r2, g2, b2, a2);
  rect(x2, y2, w2, h2);
}
