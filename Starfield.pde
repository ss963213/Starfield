Particle [] Scott;
void setup()
{
  size(500,500);
Scott=new Particle[5000];
for(int i=0; i<Scott.length;i++)
Scott[i]= new NormalParticle();
for (int i=0;i<2000;i++)
Scott[i]=new OddballParticle();
for (int i=0;i<200;i++)
Scott[i]=new JumboParticle();
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
  double resetX,resetY;
  public void show()
  {fill((float)(myX/2),(float)(myX/myY),(float)(myY/2));
    ellipse((float)myX,(float)myY,5,5);
    
  }
  public void move()
  {
    myX=myX+speed*Math.cos(angle);
    myY=myY+speed*Math.sin(angle);
    if (myX>505||myX<-5||myY>505||myY<-5)
    {angle=Math.PI*(Math.random()*2);
    speed=(Math.random()*15)+10;
    resetX=250+100*(Math.cos(angle));
    resetY=250+100*(Math.sin(angle));
    myX=resetX+speed*Math.cos(angle);
    myY=resetY+speed*Math.sin(angle);
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
  double speed=(Math.random()*15)+1;
  double angle=Math.PI*(Math.random()*2);
  public void show(){
  for(int i=0;i<8;i++)
  noStroke();
  fill((float)(myX-myY)*1.5,(float)(myX/2)*1.5,(float)(myY/2)*1.5);
  rect((float)(myX+2.5),(float)(myY+2.5),5,5);
}
public void move(){
  myX=myX+speed*Math.cos(angle);
    myY=myY+speed*Math.sin(angle);
    angle=angle+.1;
}
}
class JumboParticle extends NormalParticle
{
  public void show(){

    ellipse((float)myX,(float)myY,20,20);
  }
}
