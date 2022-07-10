class Game{

  boolean over = false;


void game(){

 if(over == false){

   speed = 4;
   p1.x -= speed;
   p2.x -= speed;
   p3.x -= speed;
    fill(0);
    stroke(23);
    strokeWeight(4);
    rect(0,50,499,640);
    highscore = max(highscore , score);

   
 
 }
 
 else if(over == true){
   //background(0);
   speed = 0;
   p1.x -= speed;
   p2.x -= speed;
   p3.x -= speed;
       fill(0);
    stroke(23);
    strokeWeight(4);
    rect(0,50,499,640);
    if(mousePressed){
    //delay(2000);
     score = 0;
     over = false;
     bird.x = 50;
     bird.y = height/2;  
     bird.speed = 5;
     p1.x = width + 40;
     p2.x = width + 200;
     p3.x  = width + 400;
     
    stroke(23);
    strokeWeight(4);
    rect(0,50,499,640);
     
     
     
    }
   
 }
 
    textSize(20);
   fill(34,44,120);
   text("SCORE: " + score , 50 , 40);
   text("HIGH SCORE:  " + highscore , width/2+ 85 , 40);

}


void collide(Pipe a){

 if(bird.y < a.top || bird.y > height-a.bottom){
   if(bird.x >a.x && bird.x < a.x + 70){
     over = true;
   }
   
 }

}

}
