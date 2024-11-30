Spaceship bob = new Spaceship();
Star [] galaxy = new Star[200];
public void setup() 
{
  background(0);
  size(500,500);
  for(int i = 0; i < galaxy.length; i++)
  {
  galaxy[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < galaxy.length; i++)
  {
    galaxy[i].show();
  }
  bob.move();
  bob.show();
  fill(255);
  textSize(20);
  text(("Direction:" + (int)bob.getPointDirection()),10,20);
  text(("X:" + bob.getCenterX()),10,40);
  text(("Y:" + bob.getCenterY()),10,60);
  text(("Xspeed:" + (int)bob.getXspeed()),10,80);
  text(("Yspeed:" + (int)bob.getYspeed()),10,100);
}

public void keyPressed(){
 if(key == 'd'){
   bob.turn(15);
 }
 if(key == 'a'){
  bob.turn(-15); 
 }
 if(key =='w'){
  bob.accelerate(.5); 
 }
 if(key == 's'){
  bob.accelerate(-0.5); 
 }
  if(key =='h'){
   bob.setXspeed(0);
   bob.setYspeed(0);
   bob.setCenterX((int)(Math.random()*500));
   bob.setCenterY((int)(Math.random()*500));
   bob.setPointDirection((int)(Math.random()*360));
 }
}

