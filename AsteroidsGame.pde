sp carrie = new sp();
h[] ns = new h[100];
public void setup()
{

size(400,400);
for(int i = 0; i < ns.length; i++){
ns[i] = new h();
  }
}

public void keyPressed()
{
  if(key == 'w')
  {
      carrie.accelerate(1);
  }
   if(key == 'a')
  {
     carrie.turn(-10.0);
  }
   if(key == 'd')
  {
     carrie.turn(10.0);
  }
  if(key == 'e')
  {
     carrie.setXspeed(0);
     carrie.setYspeed(0);
     carrie.turn((int)(Math.random()*300+100));
     carrie.setXCenter((int)(Math.random()*300+100));
      carrie.setYCenter((int)(Math.random()*300+100)); 
 }
}
class Floater
{  
  protected int cor; 
  protected int[] cc;  
  protected int[] cccc;  
  protected int c;  
  protected double myCenterX, myCenterY; 
  protected double xp, yp; 
  protected double myPointDirection;
  public void accelerate (double aa)  
  {          
    double rr =myPointDirection*(Math.PI/180);    
    xp += ((aa) * Math.cos(rr));    
    yp += ((aa) * Math.sin(rr));      
  }  
  public void turn (double degreesOfRotation)  
  {    
    myPointDirection+=degreesOfRotation;  
  }  
  public void move () 
  {      
    myCenterX += xp;    
    myCenterY += yp;    
    if(myCenterX >width)
    {    
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {    
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }
   
    else if (myCenterY < 0)
    {    
      myCenterY = height;    
    }  
  }  
  public void show () 
  {            
    fill(c);  
    stroke(c);    
    translate((float)myCenterX, (float)myCenterY);
    float rr = (float)(myPointDirection*(Math.PI/180));
    rotate(rr);
    beginShape();
    for (int K = 0; K < cor; K++)
    {
      vertex(cc[K], cccc[K]);
    }
    endShape(CLOSE);
    rotate(-1*rr);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }  
}
class sp extends Floater  
{  
  public sp() {
  cor = 4;
  cc = new int[cor];
  cccc = new int[cor];
  cc[0] = -8;
  cccc[0] = -8;
  cc[1] = 16;
  cccc[1] = 0;
  cc[2] = -8;
  cccc[2] = 8;
  cc[3] = -2;
  cccc[3] = 0;
  c = color(250,250,250);
  xp = 0;
  yp = 0;
  myPointDirection = 0;
  myCenterX = 200;
  myCenterY = 200;
  }
  public void setXspeed(double x) {
  xp = x;
  }
public void setYspeed(double y) {
  yp = y;
  }
 public void setXCenter(double x2) {
  myCenterX = x2;
  }
  public void setYCenter(double y2) {
  myCenterY = y2;
  }
}
class h
{
  private int myX, myY;
  public h() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show(){
  fill(255);
  ellipse(myX, myY, 3, 3);
  }
}
public void draw()
{
background(0);
carrie.show();
carrie.move();
for(int i = 0; i < ns.length; i++){
ns[i].show();
  }
}
