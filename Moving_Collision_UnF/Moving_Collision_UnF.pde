import org.firmata.*;
import cc.arduino.*;

import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

leftCircle myCircle1;
leftCircle myCircle2; // Two objects!
rightCircle myCircle3;
rightCircle myCircle4;
topCircle myCircle5;
topCircle myCircle6;
bottomCircle myCircle7;
bottomCircle myCircle8;

float x1,y1,x2,y2,xpos,ypos;
boolean intersect;
int gameOver=0;
int score=0;
int yspeed = 4;
int boxSpeed = 4; 
int boxX = 250; 
int boxY = 250;
int boxWidth = 20; 
int boxHeight = 20;

void setup()
{
  size(500,500);
  myCircle1 = new leftCircle(color(51), 0, 100, 5); 
  myCircle2 = new leftCircle(color(151), 0, 200, 3);
  myCircle3 = new rightCircle(color(51), 0, 100, 3); 
  myCircle4 = new rightCircle(color(151), 0, 200, 4);
  myCircle5 = new topCircle(color(51), 200, 0, 5); 
  myCircle6 = new topCircle(color(151), 100, 0, 6);
  myCircle7 = new bottomCircle(color(51), 200, 0, 7); 
  myCircle8 = new bottomCircle(color(151), 100, 0, 8);
  xpos = width/2;
  ypos = height/2;
  
  x1 = 50;
  y1 = 50;
  x2 = width - 60;
  y2 = height - 60;
  intersect = false;
  rectMode(CENTER);
  arduino = new Arduino(this,Arduino.list()[2],57600);
}

void draw()
{
  background(255);
//  ellipse(xpos, ypos, 30, 30);
//  myCircle3.move();
//  myCircle3.display();
  ellipseMode(RADIUS);
    println(gameOver);
  if(gameOver==0)
  {
      //background(0);
       myCircle1.move();
       myCircle1.display();
       myCircle2.move();
       myCircle2.display();
       myCircle3.move();
       myCircle3.display();
       myCircle4.move();
       myCircle4.display();
       myCircle5.move();
       myCircle5.display();
       myCircle6.move();
       myCircle6.display();
       myCircle7.move();
       myCircle7.display();
       myCircle8.move();
       myCircle8.display();
      // draw the rectangle, this is the barrier
      fill(0);
      textSize(20);
      text("Score: "+score, width - 100, 30);
      noStroke();
      rect(boxX, boxY, boxWidth, boxHeight);
      //rect(430, 75, 25, 330);
      
      if(arduino.analogRead(5) < 500 && arduino.analogRead(5) > 50)
  {
    fill(0);
    noStroke();
   
    boxY += boxSpeed;
  
  }
  
  // left arrow, move "hole"
  if(arduino.analogRead(5) > 500)
  {
    fill(0);
    noStroke();
    
    boxY -= boxSpeed;
  }
    if(arduino.analogRead(1) < 500 && arduino.analogRead(1) > 50)
  {
    fill(0);
    noStroke();
   
    boxX += boxSpeed;
  }
    if(arduino.analogRead(1) > 500)
  {
    fill(0);
    noStroke();
    
    boxX -= boxSpeed;
  }
  // keep rectangular hole from going off screen.
   if(boxX <= (0+boxWidth/2))
   {
     gameOver = 1; 
   }
 
   if(boxX >= (width-boxWidth/2))
   {
     gameOver = 1; 
   }
   
   if(boxY <= (0+boxWidth/2))
   {
     gameOver = 1; 
   }
   
   if(boxY >= (height-boxWidth/2))
   {
     gameOver = 1; 
   }
   if(isCollidingCircleRectangle(myCircle1.xpos(), myCircle1.ypos(), 20, boxX, boxY, boxWidth,boxHeight))
    {
      gameOver=1;
    }
    if(isCollidingCircleRectangle(myCircle2.xpos(), myCircle2.ypos(), 20, boxX, boxY, boxWidth,boxHeight))
    {
      gameOver=1;
    }
    if(isCollidingCircleRectangle(myCircle3.xpos(), myCircle3.ypos(), 20, boxX, boxY, boxWidth,boxHeight))
    {
      gameOver=1;
    }
    if(isCollidingCircleRectangle(myCircle4.xpos(), myCircle4.ypos(), 20, boxX, boxY, boxWidth,boxHeight))
    {
      gameOver=1;
    }
    if(isCollidingCircleRectangle(myCircle5.xpos(), myCircle5.ypos(), 20, boxX, boxY, boxWidth,boxHeight))
    {
      gameOver=1;
    }
    if(isCollidingCircleRectangle(myCircle6.xpos(), myCircle6.ypos(), 20, boxX, boxY, boxWidth,boxHeight))
    {
      gameOver=1;
    }
    if(isCollidingCircleRectangle(myCircle7.xpos(), myCircle7.ypos(), 20, boxX, boxY, boxWidth,boxHeight))
    {
      gameOver=1;
    }if(isCollidingCircleRectangle(myCircle8.xpos(), myCircle8.ypos(), 20, boxX, boxY, boxWidth,boxHeight))
    {
      gameOver=1;
    }
  }
    else
    {
      if(gameOver==1)

     {
        background(0);
        fill(255);
        textSize(32);
        text("GAME OVER!",width/2-90,height/2-180);
        text("Score: " + score,width/2-60,height/2);
        text("PRESS BOTH TO ESCAPE",width/2-180,height/2+80);
        
      if(arduino.analogRead(5) > 500 && arduino.analogRead(0) > 500)
    {
      gameOver=0;
      score = 0;
      myCircle1.xpos = 0;
      myCircle1.ypos = 0;
      myCircle2.xpos = 0;
      myCircle2.ypos = 0;
      myCircle3.xpos = 0;
      myCircle3.ypos = 0;
      myCircle4.xpos = 0;
      myCircle4.ypos = 0;
      myCircle5.xpos = 500;
      myCircle5.ypos = 500;
      myCircle6.xpos = 500;
      myCircle6.ypos = 500;
      myCircle7.xpos = 500;
      myCircle7.ypos = 500;
      myCircle8.xpos = 500;
      myCircle8.ypos = 500;
      boxX = 255;
      boxY = 255;
   }
     }
     }
 }

class leftCircle 
{ 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // The Constructor is defined with parameters.  
  leftCircle(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }

  void display() 
  {
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos, ypos, 30, 30);
  }

  void move() 
  {
    xpos = xpos + xspeed;
    if (xpos > width) 
    {
      xpos = 0;
      ypos = int(random(0, width));
      score++;
    }
  }
    
  float xpos()
  {
   return xpos;
  }
  
  float ypos()
  {
    return ypos; 
  }
}

class topCircle 
{ 
  color c;
  float xpos;
  float ypos;
  float yspeed;
  // The Constructor is defined with parameters.  
  topCircle(color tempC, float tempXpos, float tempYpos, float tempXspeed) 
  { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    yspeed = tempXspeed;
  }
  void display() 
  {
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos, ypos, 30, 30);
  }
  void move() 
  {
    ypos = ypos + yspeed;
    if (ypos > width) 
    {
      ypos = 0;
      xpos = int(random(0, height));  // if circle falls off bottom, move to new random x position

    }
  }
  
  float xpos()
  {
   return xpos;
  }
  
  float ypos()
  {
    return ypos; 
  }
}
class rightCircle
{ 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // The Constructor is defined with parameters.  
  rightCircle(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }

  void display() 
  {
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos, ypos, 30, 30);
    
  }

  void move() 
  {
    xpos = xpos - xspeed;
    if (xpos < 0) 
    {
      xpos = width;
      ypos = int(random(0, width));
      score++;
    }
  }
  float xpos()
  {
   return xpos;
  }
  
  float ypos()
  {
    return ypos; 
  }
}

class bottomCircle 
{ 
  color c;
  float xpos;
  float ypos;
  float yspeed;

  // The Constructor is defined with parameters.  
  bottomCircle(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    yspeed = tempXspeed;
  }

  void display() 
  {
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos, ypos, 30, 30);
  }

  void move() 
  {
    ypos = ypos - yspeed;
    if (ypos < 0) 
    {
      ypos = width;
      xpos = int(random(0, height));
      score++;
    }
  }
  float xpos()
  {
   return xpos;
  }
  
  float ypos()
  {
    return ypos; 
  }
}


boolean isCollidingCircleRectangle
(
      float circleX,
      float circleY,
      float radius,
      float boxX,
      float boxY,
      float boxWidth,
      float boxHeight)
{
    float circleDistanceX = abs(circleX - boxX);
    float circleDistanceY = abs(circleY - boxY);
 
    if (circleDistanceX > (boxWidth/2 + 15)) { return false; }
    if (circleDistanceY > (boxHeight/2 + 15)) { return false; }
 
    if (circleDistanceX <= (boxWidth/2)) { return true; }
    if (circleDistanceY <= (boxHeight/2)) { return true; }
 
    float cornerDistance_sq = pow(circleDistanceX - boxWidth/2, 2) +
                         pow(circleDistanceY - boxHeight/2, 2);
 
 
   return (cornerDistance_sq <= pow(15,2));
}
void sensorPressed()
{
  if(gameOver==1)
    {
      if(arduino.analogRead(5) > 500 && arduino.analogRead(0) > 500)
    {
      gameOver=0;
      score = 0;
      myCircle1.xpos = 0;
      myCircle1.ypos = 0;
      myCircle2.xpos = 0;
      myCircle2.ypos = 0;
      myCircle3.xpos = 0;
      myCircle3.ypos = 0;
      myCircle4.xpos = 0;
      myCircle4.ypos = 0;
      myCircle5.xpos = 500;
      myCircle5.ypos = 500;
      myCircle6.xpos = 500;
      myCircle6.ypos = 500;
      myCircle7.xpos = 500;
      myCircle7.ypos = 500;
      myCircle8.xpos = 500;
      myCircle8.ypos = 500;
      boxX = 255;
      boxY = 255;
   }
  }
}
