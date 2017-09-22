int dieRoll=0;
void setup()
{
  size(300,400);
  
  noLoop();
}
void draw()
{
  background(138,240,255);
  int diceFinal=0;
  for(int y=0; y<= 300; y=y+80)
  {
    for(int x=0; x<=300; x=x+80)
    {
      
      Die bob = new Die(x,y);
      bob.show();
      diceFinal=diceFinal + (int)bob.dieRoll;
      
    }
  }
  textSize(20);
  text("Total = " +diceFinal,100,350);
}
void mousePressed()
{
  dieRoll=0;
  redraw();
}
class Die //models one single dice cube
{
  int FinalResult;
  int myX, myY;
  double dieRoll;
  Die(int x, int y) //constructor
  {
    myX=x+5;
    myY=y+5;
    roll();
    //FinalResult=0;
    //dieRoll=(Math.random());
  }
  void roll()
  {
   
    dieRoll=(Math.random());
    if (Math.random()<.17)
    {
      dieRoll=1;
    }
    else if (Math.random()<.33)
    {
      dieRoll=2;
    }
    else if (Math.random()<.5)
    {
      dieRoll=3;
    }
    else if (Math.random()<.67)
    {
      dieRoll=4;
    }
    else if (Math.random()<.83)
    {
      dieRoll=5;
    }
    else
    {
      dieRoll=6;
    }
  }
  void show()
  {
    
    fill(81,255,68);
    rect(myX,myY,50,50,3);
    fill(0);
    if (dieRoll==1)
    {
    ellipse(myX+25,myY+25,10,10);
    }
    else if (dieRoll==2)
    {
      ellipse(myX+25,myY+15,10,10);
      ellipse(myX+25,myY+35,10,10);
    }
    else if (dieRoll==3)
    {
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+40,myY+40,10,10);
    }
    else if (dieRoll==4)
    {
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+15,myY+35,10,10);
      ellipse(myX+35,myY+15,10,10);
      ellipse(myX+35,myY+35,10,10);
    }
    else if (dieRoll==5)
    {
      ellipse(myX+10,myY+15,10,10);
      ellipse(myX+10,myY+35,10,10);
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+40,myY+15,10,10);
      ellipse(myX+40,myY+35,10,10);
    }
    else 
    {
      ellipse(myX+10,myY+15,10,10);
      ellipse(myX+10,myY+35,10,10);
      ellipse(myX+40,myY+15,10,10);
      ellipse(myX+40,myY+35,10,10);
      ellipse(myX+25,myY+15,10,10);
      ellipse(myX+25,myY+35,10,10);
      
    }
  }
}