void setup() {
  println();
}

void draw() {
}

// |sinApprox(x) - sin(x)| <= 0.056

float sinApprox(float x) {
  float normX = x / PI;
  float sign = sign(1 - normX % 2);
  float mod = abs(normX % 1);
  return (mod * mod - mod) * sign * -4;
}

// |cosApprox(x) - cos(x)| <= 0.056

float cosApprox(float x) {
  float normX = x / PI + 0.5;
  float sign = sign(1 - normX % 2);
  float mod = abs(normX % 1);
  return (mod * mod - mod) * sign * -4;
}

// {|tanApprox(x) - tan(x)|} \ infinity <= 0.053

float tanApprox(float x) {
  return sinApprox(x) / cosApprox(x);
}

float sign(float x) {
  float output = 0;
  if(x > 0) output = 1;
  if(x < 0) output = -1;
  return output;
}
