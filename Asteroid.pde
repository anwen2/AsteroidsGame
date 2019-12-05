class Asteroid extends Floater
{
		private int rotspeed = (int)(Math.random()*3)-1;	
public Asteroid()
{
	corners = 5;
	xCorners = new int[]{-15,-9,9,15,3};
	yCorners = new int[]{12,-12,-12,12,21};
	myColor = color(72,74,72);
	myCenterX = (int)(Math.random()*500);
	myCenterY = (int)(Math.random()*500);
	myDirectionX = (float)(Math.random()*2)-1;
	myDirectionY = (float)(Math.random()*2)-1;
	myPointDirection = (int)(Math.random()*500);
}
public void move()
{
	super.move();
	turn(rotspeed);
}
public void setX(int x) {myCenterX = x;}
public int getX(){return (int)myCenterX;}
public void setY(int y){myCenterY = y;}
public int getY(){return (int)myCenterY;}
}