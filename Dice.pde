Die a, b, c, d, e, f;
int sum;
void setup()
{
	size(400,400);
	background(0);
	noLoop();
	a= new Die(30,50);
	b= new Die(150,50);
	c= new Die(270,50);
	d= new Die(30,170);
	e= new Die(150,170);
	f= new Die(270,170);
}
void draw()
{	
	background(0);
	a.roll();
	a.show();
	b.roll();
	b.show();
	c.roll();
	c.show();
	d.roll();
	d.show();
	e.roll();
	e.show();
	f.roll();
	f.show();
	sum=a.numDots+b.numDots+c.numDots+d.numDots+e.numDots+f.numDots;
	text("The sum is "+sum,150,300);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, numDots;//variable declarations here
	Die(int x, int y) //constructor
	{
		myX=x;
		myY=y;//variable initializations here
	}
	void roll()
	{
		numDots=(int)(Math.random()*5)+1;
	}
	void show()
	{
		fill(255);
		rect(myX,myY,100,100);
		if(numDots==1)
		{
			fill(0);
			ellipse(myX+50,myY+50,25,25);
		}//your code here
		if(numDots==2)
		{
			fill(0);
			ellipse(myX+25,myY+25,25,25);
			ellipse(myX+75,myY+75,25,25);
		}
		if(numDots==3)
		{
			fill(0);
			ellipse(myX+18,myY+18,25,25);
			ellipse(myX+50,myY+50,25,25);
			ellipse(myX+83,myY+83,25,25);
		}
		if(numDots==4)
		{
			fill(0);
			ellipse(myX+25,myY+25,25,25);
			ellipse(myX+25,myY+75,25,25);
			ellipse(myX+75,myY+25,25,25);
			ellipse(myX+75,myY+75,25,25);
		}
		if(numDots==5)
		{
			fill(0);
			ellipse(myX+18,myY+18,25,25);
			ellipse(myX+18,myY+83,25,25);
			ellipse(myX+50,myY+50,25,25);
			ellipse(myX+83,myY+18,25,25);
			ellipse(myX+83,myY+83,25,25);
		}
		if(numDots==6)
		{
			fill(0);
			ellipse(myX+25,myY+20,25,25);
			ellipse(myX+25,myY+53,25,25);
			ellipse(myX+25,myY+80,25,25);
			ellipse(myX+75,myY+20,25,25);
			ellipse(myX+75,myY+53,25,25);
			ellipse(myX+75,myY+80,25,25);
		}
		fill(255);
	}
}
