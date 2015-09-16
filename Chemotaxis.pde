//Bacteria bob = new Bacteria();
Bacteria [] group;
 //declare bacteria variables here   
 void setup()   
 {     
 	size(300, 300);
 	group = new Bacteria [100];
 	for (int i = 0; i < group.length; i++)
 	{
 		group[i] = new Bacteria();
 	}

 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	background(0);
 	for (int i = 0; i < group.length; i++)
 	{
 		group[i].move();
 		group[i].show();
 	}

 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY, bColor;
 	Bacteria()
 	{
 		myX = 150;
 		myY = 150;
 		bColor = color((int)(Math.random()*100+50), (int)(Math.random()*200+75), (int)(Math.random()*100+50));
 	}
 	void move()
 	{
 		myX += (int)(Math.random()* 4-2);
 		myY += (int)(Math.random()* 4-2);
 	}

 	void show()
 	{
 		fill(bColor);
 		ellipse(myX, myY, 5, 5);
 	}



 	//lots of java!   
 }    