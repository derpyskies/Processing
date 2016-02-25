int strokeWeight = 10;
int penSize = 1;
int mouseWheel = 1;
int r = 10;
int g = 10;
int b = 10;

void setup()
{
  size(800,800);
  background(255);
}

void draw()
{
  fill(r,g,b);
  noStroke();
  rect(0,0,100,12);
  fill(255);
  text((r + "," + g + "," + b),10,10);
  if(key == 'r')
  {
    r++;
    key = ' ';
    if(r > 255)
    {
      r = 0;
    }
  }
  
  else if(key == 'g')
  {
    g++;
    key = ' ';
    if(g > 255)
    {
      g = 0;
    }
  }
  
  else if(key == 'b')
  {
    b++;
    key = ' ';
    if (b > 255)
    {
      b = 0;
    }
  }
}

void mouseDragged()
{
  if(mouseButton == LEFT)
  {
    strokeWeight(20);
    stroke(r,g,b);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}

void mousePressed()
{
  if(mouseButton == RIGHT)
  {
    background(255);
  }
}

void mouseWheel(MouseEvent event)
{
 penSize = penSize + event.getCount();
 println(penSize);
}

void mouseWheel()
{
  if(penSize == 1);
  {
    strokeWeight(10);
  }
  if(penSize == 2);
  {
    strokeWeight(50);
  }
}