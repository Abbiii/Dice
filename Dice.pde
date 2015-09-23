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
	int dots;
	Die(int myX, int myY) //constructor
	{//variable initializations here
		x = myX;
		y = myY;
	}
	void roll()
	{
		dots = (int)(Math.random() * 6 + 1);
		//1 dot: ellipse(myX+23, myY+23, 13, 13);
		//2 dot: ellipse(myX+23, myY+15, 10, 10);
        //       ellipse(myX+23, myY+30, 10, 10);
        //3 dot: ellipse(myX+10, myY+35, 10, 10);
        //       ellipse(myX+23, myY+23, 10, 10);
        //		 ellipse(myX+35, myY+10, 10, 10);
        //4 dot: ellipse(myX+13, myY+13, 10, 10);
        //       ellipse(myX+13, myY+33, 10, 10);
        //		 ellipse(myX+33, myY+13, 10, 10);
        //		 ellipse(myX+33, myY+33, 10, 10);
        //5 dot: ellipse(myX+10, myY+35, 10, 10);
        //       ellipse(myX+35, myY+10, 10, 10);
        //		 ellipse(myX+23, myY+23, 10, 10);
        //		 ellipse(myX+10, myY+10, 10, 10);
        //		 ellipse(myX+35, myY+35, 10, 10);
        //6 dot: ellipse(myX+15, myY+10, 10, 10);
        //       ellipse(myX+15, myY+22, 10, 10);
        //		 ellipse(myX+15, myY+35, 10, 10);
        //		 ellipse(myX+30, myY+10, 10, 10);
        // 		 ellipse(myX+30, myY+22, 10, 10);
        //		 ellipse(myX+30, myY+35, 10, 10);
	}
	void show()
	{
		rect(x,y,45,45);
	}
}
