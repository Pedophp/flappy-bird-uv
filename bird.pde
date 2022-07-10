class Bird{

float x,y , gravity,up,speed , consY;

 Bird(){
 
  y = height/2;
  x = 50;
  speed = 5;
  gravity = 0.6;
  up = 8;
  
  
  
 
 }
 
 
 void show(){
  fill(153, 255, 153);
  ellipse(x ,y , 20,20);
 
 }
 



 void move(){
 // y += speed;
  //consY = constrain(y , 59 , 900);
  if(intdata > 10) {
   y -= speed;
  }
  else {
    y += speed;
  }
 
 }

}
