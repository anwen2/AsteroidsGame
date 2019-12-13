class Spaceship extends Floater  
{   
    public Spaceship(){
      myDirectionX=myDirectionY=myPointDirection=0;
      myColor=255;
      myCenterX=myCenterY=250;
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8,0,8,0};
    }

    public void hyperspace(){
      myDirectionX=myDirectionY=0;
      myCenterX = Math.random()*500;
      myCenterY = Math.random()*500;
      myPointDirection = Math.random()*360;
    }
    public void show ()  //Draws the floater at the current position  
    {             
    fill(myColor);   
    stroke(myColor);    
    strokeWeight(3);
    translate((float)myCenterX, (float)myCenterY);        
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
    }
    public double getX(){
      return myCenterX;
    }
    public double getY(){
      return myCenterY;
    }
    public double getPoint(){
      return myPointDirection;
    }
    public double getSpeedX(){
      return myDirectionX;  
    }
    public double getSpeedY(){
      return myDirectionY;
    }
}