Die Wat;
//int sum = 0;

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
			if (myX < 202 || myX > 252)
			{
			Die Wat = new Die(myX,myY);
			Wat.roll();
			Wat.show();
			}
			else if(myY < 202 || myY > 252)
				{
				  Die Wat = new Die(myX,myY);
				  Wat.roll();
				  Wat.show();
				}
				else
				{}
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
	int dots;
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
		//draw the dots
		if (dots == 1)
			ellipse(x+23, y+23, 13, 13);
		if (dots == 2)
		{
			ellipse(x+23, y+15, 10, 10);
			ellipse(x+23, y+30, 10, 10);
		}	
        if (dots == 3)
        {
        	ellipse(x+10, y+35, 10, 10);
   			ellipse(x+23, y+23, 10, 10);
        	ellipse(x+35, y+10, 10, 10);
        }
		if (dots == 4) 
		{
			ellipse(x+13, myY+13, 10, 10);
			ellipse(x+13, myY+33, 10, 10);
			ellipse(x+33, myY+13, 10, 10);
			ellipse(x+33, myY+33, 10, 10);
		}
		if (dots == 5)
		{
			ellipse(x+10, myY+35, 10, 10);
			ellipse(x+35, myY+10, 10, 10);
			ellipse(x+23, myY+23, 10, 10);
			ellipse(x+10, myY+10, 10, 10);
			ellipse(x+35, myY+35, 10, 10);
		}
		if (dots == 6)
		{
			ellipse(x+15, myY+10, 10, 10);
			ellipse(x+15, myY+22, 10, 10);
			ellipse(x+15, y+35, 10, 10);
			ellipse(x+30, y+10, 10, 10);
 			ellipse(x+30, y+22, 10, 10);
			ellipse(x+30, y+35, 10, 10);
		}
	}
}
