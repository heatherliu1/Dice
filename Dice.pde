void setup()
{
  noLoop();
  size(295, 370);
}
void draw()
{
  double R = (int)(Math.random()*255)+1;
  double G = (int)(Math.random()*255)+1;
  double B = (int)(Math.random()*255)+1;
  background((int)R,(int)G,(int)B);
  int sum = 0;
  for(int y = 40; y <= 370; y = y + 30){
    for(int x = 0; x <= 300; x = x + 30){
      Die bob = new Die(x,y);
      bob.show();
      sum = sum + bob.nums; 
    }
  }
  fill(255);
  text("Your sum is "+ sum + "!", 100 , 30);
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int nums ;
  int myX, myY;
  Die(int x, int y) 
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
     nums = ((int)(Math.random()*6)+1);
   }
  void show()
  {
    double R = (int)(Math.random()*255)+1;
    double G = (int)(Math.random()*255)+1;
    double B = (int)(Math.random()*255)+1;
    stroke(255);
    fill(0);
    rect(myX, myY, 25, 25);
    fill((int)R, (int)G, (int)B);
    if(nums == 1){
      ellipse(myX+13, myY+13, 5, 5);
    }else if(nums == 2){
      ellipse(myX+7, myY+7, 5, 5);
      ellipse(myX+17, myY+17, 5, 5);
    }else if(nums == 3){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX+19, myY+19, 5, 5);
    }else if(nums == 4){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
    }else if(nums == 5){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
      ellipse(myX+12, myY+12, 5, 5);
    }else if(nums == 6){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+5, myY+13, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+20, myY+13, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
    }
  }
}
