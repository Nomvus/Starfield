Particle[] particles = new Particle[1000];
  
  //your code here
void setup()
{
	background(0);
  size(1000, 1000);
  for(int i = 0; i < particles.length; i++){
    particles[i] = new NormalParticle();
  }
  particles[1] = new OddballParticle();
  for(int i = 0; i < particles.length; i+=200){
    
    particles[i] = new JumboParticle();
  }

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
  
  NormalParticle(){
    myX = 500;
    myY = 500;
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = (Math.random()*10);
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
  double myX, myY, myAngle, mySpeed;
  int myColor;
  
  OddballParticle(){
    myX = myY = 100;
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = 5;
    myColor = color(100, 5, 50);
  }
	public void move(){
    myX = myX + 5*mySpeed;
    myY = myY + 5*mySpeed;
  }
  public void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, 100, 100);
  }
}
class JumboParticle extends NormalParticle implements Particle 
{
   void show(){
   fill(250);
    ellipse((float)myX, (float)myY, 30, 30);
  }
}
