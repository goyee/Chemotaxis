 Bacteria [] colony;
 void setup()   
 {     
 	size(1000,1000);
 	frameRate(120);
 	colony = new Bacteria [100];  
 	for(int i = 0; i < colony.length; i++) 
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	background(255);
 	for(int i = 0; i < colony.length; i++)
 	{
    	colony[i].move();
    	colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	int bacColor,myX,myY;

 	Bacteria()
 	{
 		bacColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
 		myX = (int)(Math.random()*500)+100;
 		myY = (int)(Math.random()*500)+100;
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 		if(mouseX > myX)
 			myX = myX + (int)(Math.random()*5)-1;
 		else
 			myX = myX + (int)(Math.random()*5)-3;
 		if(mouseY > myY)
 			myY = myY + (int)(Math.random()*5)-1;
 		else
 			myY = myY + (int)(Math.random()*5)-3;
 	}
 	void show()
 	{
 		noStroke();
 		fill(bacColor);
 		ellipse(myX,myY,50,50);
 	}
 }    