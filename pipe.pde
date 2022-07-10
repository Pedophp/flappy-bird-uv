class Pipe{

  float top,bottom , x,wid;
  boolean birdjump , collide;
  color c;
  
  
 Pipe(){
  
  top = random(100 , 300);
  bottom = random(100,300);
  x = width + 100;
  wid = 30;
  speed = 2;
  c = color(255);
  birdjump = false;
  collide = false;
  
 }


 void pipe(){

  if(game.over == true){
    
    textSize(16);
    fill(0,102,153);
    textAlign(CENTER);
    text("CLICK : PLAY AGAIN" , width/2 , height/2);
    
  }
   
   
  fill(c);
  noStroke();
  rect( x , 50 , wid , top);
  rect(x , height - bottom ,wid , bottom);
  
  
  if(x < - 80){
   x = width;   
   top = random(height/2 - 30);
   bottom = random(height/2);
    
  }
  println(x);
  if(x == 52) score++;
 }

}
