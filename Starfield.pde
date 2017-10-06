Particle [] Scott;
void setup()
{
	size(500,500);
Scott=new Particle[5000];
for(int i=0; i<Scott.length;i++)
Scott[i]= new NormalParticle();
}
void draw()
{
	background(0);
   for(int i=0;i<Scott.length;i++)
 {Scott[i].show();
 Scott[i].move();
 }
}
class NormalParticle implements Particle
{
  double myX=250;
  double myY=250;
  double speed=(Math.random()*15)+10;
  double angle=Math.PI*(Math.random()*2);
  public void show()
  {
    ellipse((float)myX,(float)myY,5,5);
    
  }
  public void move()
  {
    myX=myX+speed*Math.cos(angle);
    myY=myY+speed*Math.sin(angle);
    if (myX>505||myX<-5||myY>505||myY<-5)
    {angle=Math.PI*(Math.random()*2);
    speed=(Math.random()*15)+10;
    myX=250+speed*Math.cos(angle);
    myY=250+speed*Math.sin(angle);
  }
  }
}

interface Particle
{
	public void show();
public void move();
}
class OddballParticle implements Particle
{double myX=250;
  double myY=250;
  double speed=(Math.random()*15)+10;
  double angle=Math.PI*(Math.random()*2);
	public void show(){
  for(int i=0;i<8;i++)
  ellipse((float)myX,(float)myY,5,5);
}
public void move(){
}
}
class JumboParticle //uses inheritance
{
	//your code here
}