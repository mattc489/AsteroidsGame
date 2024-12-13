class Asteroid extends Floater
{
 private double rotationSpeed;
 public Asteroid(){
  corners = 6;
  xCorners = new int[]{-17,9,16,8,-17,-7};
  yCorners = new int[]{-10,-10, 4,8, 6, 2};
  myColor = color(192);
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500);
  myXspeed = (int)(Math.random()*4);
  myYspeed = (int)(Math.random()*4);
  rotSpeed = (int)(Math.random()*6+1);
  myPointDirection = 0;
 }
 public void move(){
  turn(rotationSpeed);
  super.move();
 }
 public void setCenterX(int x){myCenterX = x;}
 public int getCenterX(){return (int)myCenterX;}
 public void setCenterY(int y){myCenterY = y;}
 public int getCenterY(){return (int)myCenterY;}
}
