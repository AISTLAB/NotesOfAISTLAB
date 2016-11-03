import java.util.ArrayList;
import java.awt.*;
public class shape
{
  public int x, y;
  public int  _r, _g, _b;
  public int  _rf, _gf, _bf;
  void setStroke(int  r, int  g,int  b)
  {
    this._r=r;
    this._g=g;
    this._b=b;
  }
  void setFill(int r, int  g, int b)
  {
    this._rf=r;
    this._gf=g;
    this._bf=b;
  }
  void render() {
  }
}
class triangle extends shape
{
  private ArrayList<Point> ps;
  void triangle() {
  }
  void setShape(ArrayList<Point> p)
  {
    ps=p;
  }
  void render()
  {
    stroke(this._r, this._g, this._b);
    fill(this._rf, this._gf, this._bf);
    beginShape(TRIANGLES);
    for (int i=0;i<ps.size();i++)
    {
      vertex(ps.get(i).x+this.x, ps.get(i).y+this.y);
    }
    endShape();
  }
}
class rectangle extends shape
{
}
class circle extends shape
{
}
class cross extends shape
{
}

