Spaceship bob = new Spaceship();
Star [] night = new Star[200];
ArrayList <Asteroid> day = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean sIsPressed = false;
boolean dIsPressed = false;
boolean hIsPressed = false;
boolean spaceIsPressed = false;
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < night.length; i++)
    night[i] = new Star((int)(Math.random()*500),(int)(Math.random()*500));
  for(int i = 0; i < 20; i++)
    day.add(new Asteroid());  
}  
public void draw() 
{
  background(0);
  for(int i = 0; i < night.length; i++)
      night[i].show();
    for(int i = 0; i < day.size(); i++){
      day.get(i).move();
      day.get(i).show();
      if(dist((float)bob.getX(), (float)bob.getY(), (float)day.get(i).getX(), (float)day.get(i).getY()) < 20){
        day.remove(i);
        i--;
      }  
    }  
  bob.show();
  bob.move();
  if(wIsPressed)
    bob.accelerate(0.1);
  if(sIsPressed)
    bob.accelerate(-0.1);
  if(aIsPressed)
    bob.turn(-5);
  if(dIsPressed)
    bob.turn(5);
  if(hIsPressed)
    bob.hyperspace();
  if(spaceIsPressed)
    shots.add(new Bullet(bob));
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).show();
    shots.get(i).move();
  }
  for(int i = 0; i < shots.size(); i++){
    for(int j = 0; j < day.size(); j++){
      if(dist((float)day.get(j).getX(), (float)day.get(j).getY(), (float)shots.get(i).getX(), (float)shots.get(i).getY())<15){
        day.remove(j);
        shots.remove(i);
        break;
      }  
    }
  }

}
public void keyPressed(){
  if(key == 'a')
    aIsPressed = true;
  if(key =='d')
    dIsPressed = true;
  if(key == 'w')
    wIsPressed = true;
  if(key == 's')
    sIsPressed = true;
  if(key == 'h')
    hIsPressed = true;
  if(key == ' ')
    spaceIsPressed = true;
}  
public void keyReleased(){
  if(key == 'a')
    aIsPressed = false;
  if(key =='d')
    dIsPressed = false;
  if(key == 'w')
    wIsPressed = false;
  if(key == 's')
    sIsPressed = false;
  if(key == 'h')
    hIsPressed = false;
  if(key == ' ')
    spaceIsPressed = false;
}  
