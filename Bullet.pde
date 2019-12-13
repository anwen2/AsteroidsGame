class Bullet extends Floater {
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPoint();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + theShip.getSpeedX();
    myDirectionY = 5 * Math.sin(dRadians) + theShip.getSpeedY();  
  }
  public void show(){
    noStroke();
    fill(0, (int)(Math.random()*256), 255);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);  
  }
  public void move(){
    myCenterX += myDirectionX;    
      myCenterY += myDirectionY;
      if(myCenterX > width || myCenterX < 0 || myCenterY > height || myCenterY < 0)
        shots.remove(this);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}