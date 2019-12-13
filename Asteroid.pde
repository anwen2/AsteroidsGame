class Asteroid extends Floater{
  private int rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*3)-1;
    myColor = color(72,74,72);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myPointDirection = Math.random()*360;
    myDirectionX = Math.random()*6-3;
    myDirectionY = Math.random()*6-3;
    corners = 5;
    xCorners = new int[]{-15,-9,9,15,3};
    yCorners = new int[]{12,-12,-12,12,21};
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
    public double getX(){
        return myCenterX;
    }
    public double getY(){
        return myCenterY;
    }
}
