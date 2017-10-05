NormalParticle [] Scott;
void setup()
{
	size(500,500);
Scott=new NormalParticle[5000];
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
class NormalParticle
{
  double myX=250;
  double myY=250;
  double speed=(Math.random()*15)+10;
  double angle=Math.PI*(Math.random()*2);
  void show()
  {
    ellipse((float)myX,(float)myY,5,5);
    
  }
  void move()
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
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}