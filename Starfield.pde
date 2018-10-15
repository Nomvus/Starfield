Particle[] particles = new Particle[100];
  
  //your code here
void setup()
{
	background(0);
  size(1000, 1000);
  for(int i = 0; i < particles.length; i++){
    particles[i] = new NormalParticle();
  }
}
void draw()
{
	for(int i = 0; i < particles.length; i++){
    particles[i].show();
    particles[i].move();
  }
}
class NormalParticle implements Particle
{
	double myX, myY, myAngle, mySpeed;
  int myColor;
  
  NormalParticle(){
    myX = 100;
    myY = 100;
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = (Math.random()*10);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  public void move(){
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show(){
    fill(myColor);
    ellipse(myX, myY, 30, 30);
  }

}
interface Particle
{
	public void move();
}
class OddballParticle implements Particle
{
	//your code here
}
class JumboParticle implements Particle
{
	//your code here
}
