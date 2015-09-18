
Bacteria [] group;

 void setup()   
 {     
 	size(300, 300);
 	group = new Bacteria [200];
 	for (int i = 0; i < group.length; i++)
 	{
 		group[i] = new Bacteria();
 	} 
 }   
 void draw()   
 {    
 	background(0);
 	noStroke();
 	for (int i = 0; i < group.length; i++)
 	{
 		group[i].move();
 		group[i].show();
 	}
 }  
 
 class Bacteria    
 {     
	int myX, myY, bColor;
 	Bacteria()
 	{
 		myX = 150;
 		myY = 150;
 		bColor = color((int)(Math.random()*200+50), (int)(Math.random()*200+75), (int)(Math.random()*200+50));
 	}
 	void move()
 	{
 		myX += (int)(Math.random()* 4-2);
 		myY += (int)(Math.random()* 4-2);
 	}

 	void show()
 	{
 		fill(bColor);
 		ellipse(myX, myY, ((int)(Math.random()*10)), ((int)(Math.random()*10)));
 	} 
 }    

