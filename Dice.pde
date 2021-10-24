Die dice[][];
int totalRoll = 0;
int rollNumber = 1;
int rollAverage = 0;
int previousAverage = 0;

void setup()
{
  size(800, 800);
  background(0);
  textAlign(CENTER, CENTER);
  textSize(18);
  dice = new Die[4][4];
  noLoop();
}
void draw()
{
  clear();
  for (int i = 0; i <= 3; i++)
  {
    for (int j = 0; j <= 3; j++)
    {
      dice[i][j] = new Die(2*i*width/8 + width/24, 2*j*height/8 + width/24);
      dice[i][j].show();
    }
  }
  rollAverage = totalRoll;
  previousAverage += rollAverage;
  rollAverage = previousAverage / rollNumber;
  fill(255);
  text("Total Roll: " + totalRoll, width/2, height/2);
  text("Roll Number: " + rollNumber, width/4, height/2);
  text("Average Roll: " + rollAverage, 3*width/4, height/2);
}
void mousePressed()
{
  totalRoll = 0;
  rollNumber += 1;
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int myX, myY, roll;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll = (int)(Math.random()*6+1);
    totalRoll += roll;
  }
  void roll()
  {
  
  }
  void show()
  {
    fill(255);
    rect(myX, myY, width/6, height/6, 10);
    fill(0);
    if (roll == 1)
    {
      ellipse(myX + width/12, myY + height/12, width/18, height/18);
    }
    if (roll == 2)
    {
      ellipse(myX + width/12 - width/24, myY + height/12, width/24, height/24);
      ellipse(myX + width/12 + width/24, myY + height/12, width/24, height/24);
    }
    if (roll == 3)
    {
      ellipse(myX + width/12 - width/28, myY + height/12 + height/36, width/24, height/24);
      ellipse(myX + width/12 + width/28, myY + height/12 + height/36, width/24, height/24);
      ellipse(myX + width/12, myY + height/12 - height/36, width/24, height/24);
    }
    if (roll == 4)
    {
      ellipse(myX + width/12 - width/36, myY + height/12 + height/36, width/24, height/24);
      ellipse(myX + width/12 + width/36, myY + height/12 + height/36, width/24, height/24);
      ellipse(myX + width/12 - width/36, myY + height/12 - height/36, width/24, height/24);
      ellipse(myX + width/12 + width/36, myY + height/12 - height/36, width/24, height/24);
    }
    if (roll == 5)
    {
      ellipse(myX + width/12, myY + height/12, width/32, height/32);
      ellipse(myX + width/12 - width/28, myY + height/12 + height/28, width/32, height/32);
      ellipse(myX + width/12 + width/28, myY + height/12 + height/28, width/32, height/32);
      ellipse(myX + width/12 - width/28, myY + height/12 - height/28, width/32, height/32);
      ellipse(myX + width/12 + width/28, myY + height/12 - height/28, width/32, height/32);
    }
    if (roll == 6)
    {
      ellipse(myX + width/12 - width/38, myY + height/12 - height/28, width/32, height/32);
      ellipse(myX + width/12 + width/38, myY + height/12 - height/28, width/32, height/32);
      ellipse(myX + width/12 - width/38, myY + height/12 + height/28, width/32, height/32);
      ellipse(myX + width/12 + width/38, myY + height/12 + height/28, width/32, height/32);
      ellipse(myX + width/12 - width/38, myY + height/12, width/32, height/32);
      ellipse(myX + width/12 + width/38, myY + height/12, width/32, height/32);
    }
  }
}
