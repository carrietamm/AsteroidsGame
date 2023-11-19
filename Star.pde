class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random()500);
    myY = (int)(Math.random()500);
  }
  public void show(){
  fill(255);
  ellipse(myX, myY, 3, 3);
  }
}
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup()
{

size(400,400);
for(int i = 0; i < nightSky.length; i++){
nightSky[i] = new Star();
  }
}
public void draw()
{
background(0);
bob.show();
bob.move();
for(int i = 0; i < nightSky.length; i++){
nightSky[i].show();
fill(255);
