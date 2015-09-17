import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {


Bacteria [] group;

 public void setup()   
 {     
 	size(300, 300);
 	group = new Bacteria [200];


 	for (int i = 0; i < group.length; i++)
 	{
 		group[i] = new Bacteria();
 	} 
 }   
 public void draw()   
 {    
 	background(255);
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
 	public void move()
 	{
 		myX += (int)(Math.random()* 4-2);
 		myY += (int)(Math.random()* 4-2);
 	}

 	public void show()
 	{
 		fill(bColor);
 		ellipse(myX, myY, ((int)(Math.random()*10)), ((int)(Math.random()*10)));
 	} 
 }    

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
