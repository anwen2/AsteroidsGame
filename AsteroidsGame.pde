Spaceship bob;
Star[] night;
ArrayList <Asteroid> day = new ArrayList <Asteroid>();

public void setup() 
{
  bob = new Spaceship();
  night = new Star[100];
  for(int i = 0; i < 20; i++){
  	 day.add(new Asteroid());
  }
  for(int i = 0 ; i < night.length; i++){
  night[i] = new Star((int)(Math.random()*500),(int)(Math.random()*500));	
  }
  size(500,500);
}
public void draw() 
{
  background(0);
  for(int i = 0 ; i < night.length; i++){
  night[i].show();	
  }
  for(int i = 0; i < day.size(); i++){
  	day.get(i).show();
  	day.get(i).move();
  	if(dist(bob.getX(),bob.getY(),day.get(i).getX(),day.get(i).getY()) < 20){
  	day.remove(i);
  	}
  }

  bob.show();
  bob.move();
}
public void keyPressed()
{
	if(key == 'w'){
		bob.accelerate(0.5);
	}
	if(key == 's'){
		bob.accelerate(-0.5);
	}
	if(key == 'a'){
		bob.turn(-15);
	}
	if(key == 'd'){
		bob.turn(15);
	}
	if(key == 'h'){
		bob.setPointDirection((int)(Math.random()*360));
		bob.setX((int)(Math.random()*500));
		bob.setY((int)(Math.random()*500));
		bob.setDirectionX(0);
		bob.setDirectionY(0);
	}
}

