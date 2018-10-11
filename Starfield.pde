//your code here
void setup()
{
	//your code here
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double myX, myY, myAngle, mySpeed;
  int myColor;
  NormalParticle(){
    myX = 100;
    myY = 100;
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = (Math.random()*10);
  }
  void move(){
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show(){
    
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
