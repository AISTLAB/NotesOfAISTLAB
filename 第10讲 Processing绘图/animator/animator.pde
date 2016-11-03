int a=200;
float d=0;
void setup()
{
  size(600, 400);
  smooth();
}
void draw()
{
  clear();
  ellipse(300, 200, a*sin(d)+150, a*sin(d)+150);
  d+=0.02;
}

