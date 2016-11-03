void setup()
{
  size(500,300);
  stroke(0,255,0);
  background(0,0,100);
  smooth();
}
int gi=0;
void draw()
{
  clear();
  for(int i=0;i<50;i++)
  {
    stroke(0,255,0);
    rect(i*10,100+50*sin((gi+i)/11.0),8,8);
    stroke(255,0,255);
    fill(0,255,0);
    arc(i*10,100+30*cos((gi+i)/13.0),5,5,0,360);
  }
  gi++;
}


