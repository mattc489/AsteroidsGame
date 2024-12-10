class Bullet extends Floater{
 public Bullet(Spaceship bob){
   myCenterX = bob.getX();
   myCenterY = bob.getY();
   myPointDirection = bob.getPointDirection();
   accelerate(2);
 }
 public void show(){
   fill(255,0,255);
   ellipse((float)myCenterX, (float)myCenterY, 10, 10);
 }
}
