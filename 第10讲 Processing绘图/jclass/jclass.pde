triangle t;
void setup()
{
  size(800,600);
  strokeWeight(3);
  smooth();
  t=new triangle();
  ArrayList<Point> p=new ArrayList<Point>();
  p.add(new Point(10, 10));
  p.add(new Point(100, 10));
  p.add(new Point(10, 100));
  t.setShape(p);
  t.setStroke(0,0,255);
  t.setFill(0,255,128);
}
void draw()
{
  clear();
  background(255,255,255);
  t.render();
  t.x++;
  t.y++;
}

