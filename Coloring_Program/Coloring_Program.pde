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
  size(1200,800);
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
  fill(0);
  text(("PEN SIZE"), 1120,20);
  fill(r,g,b);
  ellipse(1150, 55, penSize, penSize);
  
  
  strokeWeight(1);
  stroke(0);
  //Ivory coded
  fill(255, 255, 240);
  rect (0,20,30,30);
  //Beige coded
  fill(245,245,220);
  rect(30, 20, 30, 30);
  //Wheat coded
  fill(245,222,179);
  rect(0, 50, 30, 30);
  //Tan coded
  fill(210,180,140);
  rect(30, 50, 30, 30);
  //Khaki 
  fill(195,176,145);
  rect(0, 80, 30, 30);
  //Sliver
  fill(192,192,192);
  rect(30, 80, 30, 30);
  //Grey
  fill(128,128,128);
  rect(0, 110, 30, 30);
  //Charcoal
  fill(70,70,70);
  rect(30, 110, 30, 30);
  //Navy Blue
  fill(0,0,205);
  rect(0, 140, 30, 30);
  //Azure
  fill(70,125,255);
  rect(30, 140, 30, 30);
  //Cyan
  fill(0,255,255);
  rect(0, 170, 30, 30);
  //Aquamarine
  fill(127,255,212);
  rect(30, 170, 30, 30);
  //Teal
  fill(0,128,128);
  rect(0, 200, 30, 30);
  //Forest Green
  fill(34,139,34);
  rect(30, 200, 30, 30);
  //Olive
  fill(128,128,0);
  rect(0, 230, 30, 30);
  //Chartreuse
  fill(127,255,0);
  rect(30, 230, 30, 30);
  //Lime
  fill(191,255,0);
  rect(0, 260, 30, 30);
  //Golden
  fill(255,215,0);
  rect(30, 260, 30, 30);
  //Goldenrod
  fill(218,165,32);
  rect(0, 290, 30, 30);
  //Coral
  fill(255,127,80);
  rect(30, 290, 30, 30);
  //Salmon
  fill(250,128,114);
  rect(0, 320, 30, 30);
  //HotPink
  fill(252,15,192);
  rect(30,320, 30, 30);
  //Fuchsia
  fill(255,119,255);
  rect(0, 350, 30, 30);
  //Puce
  fill(204,134,153);
  rect(30,350, 30, 30);
  //Mauve
  fill(224,176,255);
  rect(0, 380, 30, 30);
  //Lavender
  fill(181,126,220);
  rect(30, 380, 30, 30);
  //Plum
  fill(132,49,121);
  rect(0, 410, 30, 30);
  //Indigo
  fill(75,0,130);
  rect(30, 410, 30, 30);
  //Maroon
  fill(128,0,0);
  rect(0, 440, 30, 30);
  //Crimson
  fill(220,20,60);
  rect(30, 440, 30, 30);
  //White
  fill(255,255,255);
  rect(0,470,30,30);
  //Black
  fill(0,0,0);
  rect(30,470,30,30);

  if(mousePressed == true) 
  {
    if(mouseX < 30 && mouseX > 0 && mouseY < 50 && mouseY > 20) 
    {
      r = 255;
      g = 255;
      b = 240;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 50 && mouseY > 20) 
    {
      r = 245;
      g = 245;
      b = 220;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 80 && mouseY > 50)
    {
      r = 245;
      g = 222;
      b = 179;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 80 && mouseY > 50)
    {
      r = 210;
      g = 180;
      b = 140;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 110 && mouseY > 80)
    {
      r = 195;
      g = 176;
      b = 145;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 110 && mouseY > 80)
    {
      r = 192;
      g = 192;
      b = 192;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 140 && mouseY > 110)
    {
      r = 128;
      g = 128;
      b = 128;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 140 && mouseY > 110)
    {
      r = 70;
      g = 70;
      b = 70;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 170 && mouseY > 140)
    {
      r = 0;
      g = 0;
      b = 205;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 170 && mouseY > 140)
    {
      r = 70;
      g = 125;
      b = 255;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 200 && mouseY > 170)
    {
      r = 0;
      g = 255;
      b = 255;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 200 && mouseY > 170)
    {
      r = 127;
      g = 255;
      b = 212;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 230 && mouseY > 200)
    {
      r = 0;
      g = 128;
      b = 128;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 230 && mouseY > 200)
    {
      r = 34;
      g = 139;
      b = 34;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 260 && mouseY > 230)
    {
      r = 128;
      g = 128;
      b = 0;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 260 && mouseY > 230)
    {
      r = 127;
      g = 255;
      b = 0;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 290 && mouseY > 260)
    {
      r = 191;
      g = 255;
      b = 0;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 290 && mouseY > 260)
    {
      r = 255;
      g = 215;
      b = 0;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 320 && mouseY > 290)
    {
      r = 218;
      g = 165;
      b = 32;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 320 && mouseY > 290)
    {
      r = 255;
      g = 127;
      b = 80;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 350 && mouseY > 320)
    {
      r = 250;
      g = 128;
      b = 144;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 350 && mouseY > 320)
    {
      r = 252;
      g = 15;
      b = 192;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 380 && mouseY > 350)
    {
      r = 255;
      g = 119;
      b = 255;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 380 && mouseY > 350)
    {
      r = 204;
      g = 134;
      b = 153;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 410 && mouseY > 380)
    {
      r = 224;
      g = 176;
      b = 255;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 410 && mouseY > 380)
    {
      r = 181;
      g = 126;
      b = 220;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 440 && mouseY > 410)
    {
      r = 132;
      g = 49;
      b = 121;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 440 && mouseY > 410)
    {
      r = 75;
      g = 0;
      b = 130;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 470 && mouseY > 440)
    {
      r = 128;
      g = 0;
      b = 0;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 470 && mouseY > 440)
    {
      r = 220;
      g = 20;
      b = 60;
    }
    if(mouseX < 30 && mouseX > 0 && mouseY < 500 && mouseY > 470)
    {
      r = 255;
      g = 255;
      b = 255;
    }
    if(mouseX < 60 && mouseX > 30 && mouseY < 500 && mouseY > 470)
    {
      r = 0;
      g = 0;
      b = 0;
    }
    

  }
  //Red
  if(key == '1')
  {
    r++;
    key = ' ';
    if(r > 255)
    {
      r = 0;
    }
  }
  if(key == '2')
  {
    r--;
    key = ' ';
    if(r < 0)
    {
      r = 255;
    }
  }
  //Green
  else if(key == '3')
  {
    g++;
    key = ' ';
    if(g > 255)
    {
      g = 0;
    }
  }
  else if(key == '4')
  {
    g--;
    key = ' ';
    if(g < 0)
    {
      g = 255;
    }
  }
  //BLUE
  else if(key == '5')
  {
    b++;
    key = ' ';
    if (b > 255)
    {
      b = 0;
    }
  }
  else if(key == '6')
  {
    b--;
    key = ' ';
    if (b < 0)
    {
      b = 255;
    }
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
 {
 fill(255);
 rect(1100, 0, 100, 100); 
 text(("PEN SIZE"), 720,20);
}
}