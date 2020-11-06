//your code here
Particle[] Stars = new Particle[5000];
Particle Meteor = new OddballParticle();

void setup()
{
  //your code here
  background(0,0,0);
  size(900,900);
  for (int x = 0; x < Stars.length; x++) 
  {
    Stars[x] = new Particle();
  }
}

void draw()
{
  background(255);
  for (int x = 0; x < Stars.length; x++) 
  {
    Stars[x].move();
    Stars[x].show();
  }
  Meteor.move();
  Meteor.show();
}

class Particle
{
  int locX, locY, baseSpd;
  double pDeg, spdX, spdY;
  Particle() 
  {
    pDeg = (double) (Math.random()*360);
    baseSpd = (int) (Math.random()*5);
    spdX = (Math.cos(pDeg)*baseSpd);
    spdY = (Math.sin(pDeg)*baseSpd);
    locX = 450;
    locY = 450; 
  }
  
  void move() {
    locX += spdX;
    locY += spdY;
  }
  
  void show() {
    fill(0,0,0);
    rect(locX,locY,10,10);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle() 
  {
    pDeg = (double) (Math.random()*360);
    baseSpd = (int) (Math.random()*5);
    spdX = (Math.cos(pDeg)*baseSpd);
    spdY = (Math.sin(pDeg)*baseSpd);
    locX = 450;
    locY = 450; 
  }
  
  void show() {
    fill(0,0,0);
    rect(locX,locY,30,30);
  }
}
