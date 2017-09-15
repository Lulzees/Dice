void setup()
{
  background(100);
  size(600, 600);
  noLoop();
}
void draw()
{
  for (int y = 50; y <= 600; y = y + 100)
  {
    for (int x = 50; x <= 600; x = x + 100)
    { 
      Die vincent = new Die(x, y);
      vincent.show();
    }
  }
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, r;
  Die(int x, int y) //constructor

  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    int i = (int)(Math.random()*6)+1;
    if (i == 1)
      r = 1;
    else if (i == 2)
      r = 2;
    else if (i == 3)
      r = 3;
    else if (i == 4)
      r = 4;
    else if (i == 5)
      r = 5;
    else {
      r = 6;
    }
  }
  void show()
  {
    fill(255);
    rectMode(CENTER);
    rect(myX, myY, 50, 50, 10);
    fill(0);
    if (r==1)
    {
      ellipse(myX, myY, 10, 10);
    } else if (r==2)
    {
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
    } else if (r==3)
    {
      ellipse(myX, myY, 10, 10);
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
    } else if (r==4)
    {
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX - 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
    } else if (r==5)
    {
      ellipse(myX, myY, 10, 10);
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX - 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
    } else
    {
      ellipse(myX + 10, myY, 10, 10);
      ellipse(myX - 10, myY, 10, 10);
      ellipse(myX - 10, myY - 12, 10, 10);
      ellipse(myX + 10, myY + 12, 10, 10);
      ellipse(myX - 10, myY + 12, 10, 10);
      ellipse(myX + 10, myY - 12, 10, 10);
    }
  }
}