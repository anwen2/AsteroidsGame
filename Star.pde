class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star(int x, int y){
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void show(){
    stroke(myColor);
    ellipse(myX,myY,3,3);
  }
}