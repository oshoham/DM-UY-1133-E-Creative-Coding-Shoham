// More animation with sin().

void setup() {
  size(500, 500);
}

void draw() {
  background(200);

  // frequency is how fast the sine wave oscillates
  float frequency = 0.05;
  // amplitude is how large the sine wave gets
  float amplitude = 100;

  int centerX = width / 2;
  float circleSize = 50;

  // we don't have to use map() when working with sin() - we can also use regular arithmetic
  float x = centerX + sin(frameCount * frequency) * amplitude;

  ellipse(x, height / 2, circleSize, circleSize);
}
