void setup()
{
	size(500,500);
	noLoop();
}

void draw()
{
	background(0);
	for(int myY = 0; myY < 500 ; myY+=50)
	{
		for(int myX = 0; myX < 500; myX += 50)
		{
			Die Wat = new Die(myX,myY);
			Wat.roll();
			Wat.show();
		}
	}
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
