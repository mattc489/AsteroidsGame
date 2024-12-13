//your variable declarations here
int health = 100;
Spaceship bob = new Spaceship();
Star [] galaxy = new Star[200];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
public void setup() 
{
  //your code here
  background(0);
  size(500,500);
  
  for(int i = 0; i < 10; i++){
   Asteroid sue = new Asteroid();
   rock.add(sue);
  }
  
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
  text(("Health:" + health), 10, 120);
  
  for(int i = 0; i < rock.size(); i++){
   rock.get(i).move();
   rock.get(i).show();
   float d = dist(bob.getCenterX(), bob.getCenterY(), 
   rock.get(i).getCenterX(), rock.get(i).getCenterY());
   if(d<30){
     rock.remove(i);
     i--;
     health -= 10;
   }
  }
  
  for(int i = shots.size()-1; i >= 0; i--){
   shots.get(i).move();
   shots.get(i).show();
   for(int j = rock.size()-1; j >= 0; j--){
     if(dist((float)(shots.get(i).myCenterX), (float)(shots.get(i).myCenterY), 
     (float)(rock.get(j).myCenterX), (float)(rock.get(j).myCenterY)) <= 20){
       shots.remove(i);
       rock.remove(j);
     }
   }
  }
}

public void keyPressed(){
  //turn right
 if(key == 'd'){
   bob.turn(15);
 }
 //turn left
 if(key == 'a'){
  bob.turn(-15); 
 }
 //accelerate
 if(key =='w'){
  bob.accelerate(.5); 
 }
 //de-accelerate
 if(key == 's'){
  bob.accelerate(-0.5); 
 }
 //hyperspacec
  if(key =='h'){
   bob.setXspeed(0);
   bob.setYspeed(0);
   bob.setCenterX((int)(Math.random()*500));
   bob.setCenterY((int)(Math.random()*500));
   bob.setPointDirection((int)(Math.random()*360));
 }
 if(key == ' '){
  shots.add(new Bullet(bob)); 
 }
}
