int hp=100;
Spaceship bob = new Spaceship();
Star[] galaxy = new Star[200];
ArrayList<Asteroid> boom = new ArrayList<Asteroid>();
ArrayList<Bullet> shoot = new ArrayList<Bullet>();

public void setup() {
  background(0);
  size(500, 500);

  for (int i = 0; i < 10; i++) {
    Asteroid me = new Asteroid();
    boom.add(me);
  }

  for (int i = 0; i < galaxy.length; i++) {
    galaxy[i] = new Star();
  }
}

public void draw() {
  background(0);
  
  for (int i = 0; i < galaxy.length; i++) {
    galaxy[i].show();
  }

  bob.move();
  bob.show();

  fill(255);

  for (int i = 0; i < boom.size(); i++) {
    boom.get(i).move();
    boom.get(i).show();

    float d = dist(bob.getCenterX(), bob.getCenterY(), boom.get(i).getCenterX(), boom.get(i).getCenterY());

    if (d < 30) {
      boom.remove(i);
      i--;  
      hp=hp-10;
    }
  }
for(int i = shoot.size()-1; i >= 0; i--){
   shoot.get(i).move();
   shoot.get(i).show();
   for(int j = boom.size()-1; j >= 0; j--){
     if(dist((float)(shoot.get(i).myCenterX), (float)(shoot.get(i).myCenterY), 
     (float)(boom.get(j).myCenterX), (float)(boom.get(j).myCenterY)) <= 20){
       shoot.remove(i);
       boom.remove(j);
     }
   }
  }
}

public void keyPressed() {
  if (key == 'd') {
    bob.turn(15);
  }
  if (key == 'a') {
    bob.turn(-15);
  }
  if (key == 'w') {
    bob.accelerate(0.5);
  }
  if (key == 's') {
    bob.accelerate(-0.5);
  }
  if (key == 'h') {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX((int)(Math.random() * 500));
    bob.setCenterY((int)(Math.random() * 500));
    bob.setPointDirection((int)(Math.random() * 360));
  }
  if (key == ' '){
  shoot.add(new Bullet(bob));
}
}
