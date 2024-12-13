class Asteroid extends Floater
{
 private double rotSpeed;
 public Asteroid(){
  corners = 6;
  xCorners = new int[]{-11,7,13,6,-11,-5};
  yCorners = new int[]{-8,-8, 0,10, 8, 0};
  myColor = color(192);
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500);
  myXspeed = (int)(Math.random()*4);
  myYspeed = (int)(Math.random()*4);
  rotSpeed = (int)(Math.random()*6+1);
  myPointDirection = 0;
 }
 public void move(){
  turn(rotSpeed);
  super.move();
 }
 public void setCenterX(int x){myCenterX = x;}
 public int getCenterX(){return (int)myCenterX;}
 public void setCenterY(int y){myCenterY = y;}
 public int getCenterY(){return (int)myCenterY;}
}
