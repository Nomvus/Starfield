Particle[] particles = new Particle[1000];
  
  //your code here
void setup()
{
	background(0);
  size(1000, 1000);
  for(int i = 0; i < particles.length; i++){
    particles[i] = new NormalParticle();
  }
  particles[0] = new JumboParticle();
}
void draw()
{
  background(0);
	for(int i = 0; i < particles.length; i++){
    particles[i].move();
    particles[i].show();
  }
}
class NormalParticle implements Particle
{
	double myX, myY, myAngle, mySpeed;
  int myColor;
  
  NormalParticle(){
    myX = 500;
    myY = 500;
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = (Math.random()*10);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  
  public void move(){
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  
  public void show(){
    fill(250);
    ellipse((float)myX, (float)myY, 3, 3);
  }

}
interface Particle
{
	public void move();
  public void show();
}
class OddballParticle implements Particle
{
	public void move(){
  
  }
  public void show(){
  
  }
}
class JumboParticle extends NormalParticle implements Particle 
{
   void show(){
    ellipse((float)myX, (float)myY, 30, 30);
  }
}
