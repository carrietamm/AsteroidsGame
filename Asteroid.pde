class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 8;
  xCorners = new int[corners];
  yCorners = new int[corners];
   xCorners[0] = -2;
  yCorners[0] = 6;
  xCorners[1] = 0;
  yCorners[1] = 10;
  xCorners[2] = 5;
  yCorners[2] = 12;
  xCorners[3] = 10;
  yCorners[3] = 10;
  xCorners[4] = 11;
  yCorners[4] = 8;
  xCorners[5] = 9;
  yCorners[5] = 6;
  xCorners[6] = 8;
  yCorners[6] = 2;
  xCorners[7] = 1;
  yCorners[7] = 2;
 myColor = color(100);
 myXspeed = (Math.random()*2)-1;
  myYspeed = (Math.random()*2)-1;
  myPointDirection = (Math.random()*360);
  myCenterX = (Math.random()*500-250);
  myCenterY = (Math.random()*500-250);

  }
  public void move() {
     turn((double)rotSpeed);
    super.move();

  }
  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
  
  public void setXspeed(double x) {
  myXspeed = x;
  }

public void setYspeed(double y) {
  myYspeed = y;
  }

}
