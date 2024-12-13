class Asteroid extends Floater
{
  private double speedRot;
  public  Asteroid(){
    corners = 6;
     xCorners = new int[]{-10, 10, 20, 15, -5, -15};
     yCorners = new int[]{-10, -5, 5, 15, 15, 5};
     myColor = color(192);
     myCenterX = (int)(Math.random()*400);
     myCenterY = (int)(Math.random()*400);
     myXspeed = (int)(Math.random() * 5);
     myYspeed = (int)(Math.random() * 5);
     speedRotation = (int)(Math.random() * 7);    
     myPointDirection = 0;
    
  
  
  }
public void move() {
turn(speedRot);
super.move();
  }
  public void setcenterX(int x){myCenterX = x;}
  public int getcenterX(){return (int)myCenterX;}
   public void setcenterY(int y){myCenterY = y;}
   public int getcenterY(){return (int)myCenterY;}
}
