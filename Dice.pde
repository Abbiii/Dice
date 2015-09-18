Die Wat;
int sum = 0;
int dots;

void setup()
{
	size(500,500);
	noLoop();
}

void draw()
{
	background(0);
	for(int myY = 2; myY < 502 ; myY+=50)
	{
		for(int myX = 2; myX < 502; myX += 50)
		{
			Die Wat = new Die(myX,myY);
			Wat.roll();
			Wat.show();
		}
	}
}

void mousePressed()
{
	redraw();//roll dice again
}

class Die //models one single dice cube
{
	int x, y;
	Die(int myX, int myY) //constructor
	{//variable initializations here
		x = myX;
		y = myY;
	}
	void roll()
	{
		dots = (int)(Math.random() * 6 + 1);
	}
	void show()
	{
		rect(x,y,45,45);
	}
}
