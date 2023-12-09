class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 8;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = -20;
  yCorners[0] = -20;
  xCorners[1] = 10;
  yCorners[1] = -8;
  xCorners[2] = 5;
  yCorners[2] = 5;
  xCorners[3] = 6;
  yCorners[3] = 10;
  xCorners[4] = -8;
  yCorners[4] = -1;
  xCorners[5] = -16;
  yCorners[5] = -5;
  xCorners[6] = -20;
  yCorners[6] = -8;
  xCorners[7] = -30;
  yCorners[7] = -7;
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
