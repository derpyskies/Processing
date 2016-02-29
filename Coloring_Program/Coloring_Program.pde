//Unknowns
int strokeWeight = 10;
int penSize = 1;
int mouseWheel = 1;
int r = 10;
int g = 10;
int b = 10;

void setup()
{
  //Background  Size
  size(800,800);
  background(255); //set UP
}

void draw()
{
  //Each of these ADD and SUBTRACT each of there respective colors
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
    }  //Sets RGB to respective values for color change
  }
}

void mouseDragged()
{
  //Draws the current color
  if(mouseButton == LEFT)
  {
    strokeWeight(penSize);
    stroke(r,g,b);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  //Causes the right mouse button to draw pure white
  if(mouseButton == RIGHT)
  {
    strokeWeight(penSize);
    stroke(255,255,255);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}

//This is what changes the stroke weight
void mouseWheel(MouseEvent event)
{
 penSize = penSize + event.getCount();
 println(penSize);
 //Max and min for size
 if(penSize > 50)
 {
   penSize = 1;
 }
 if(penSize < 1)
 {
   penSize = 50;
 }
}