Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList<Asteroid> ast = new ArrayList<Asteroid>();
public void setup()
{
size(400,400);
for(int b = 0; b < nightSky.length; b++){
  nightSky[b] = new Star();
  }
  for(int j = 0; j < 100; j++){
    ast.add(new Asteroid());
  }
}
public void draw()
{
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i < nightSky.length; i++){
  nightSky[i].show();
  }
  for(int a = 0; a <9 ;a++){
    ast.get(a).move();  
    ast.get(a).show(); 
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)ast.get(a).getX(), (float)ast.get(a).getY());
    if(d<15){
      ast.remove(a);
      a--;
    }
  }
}
public void keyPressed()
{
 
  if(key == 'w')
  {
      bob.accelerate(1);

  }
   if(key == 'a')
  {
     bob.turn(-10.0);
  }
   if(key == 'd')
  {
     bob.turn(10.0);
  }
  if(key == 'e')
  {
     bob.setXspeed(0);
     bob.setYspeed(0);
     bob.turn((int)(Math.random()*300+100));
     bob.setXCenter((int)(Math.random()*300+100));
      bob.setYCenter((int)(Math.random()*300+100));

 }
}
