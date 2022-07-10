import processing.serial.*;
Serial myport;
String data;
int birddist;
int intdata;

int score = 0 , highscore = 0;
float speed;

Bird bird;

Pipe p1 = new Pipe();
Pipe p2 = new Pipe();
Pipe p3 = new Pipe();
Game game = new Game();


void setup(){
 size(500,600);
 bird = new Bird();
 p1.x = width + 40;
 p2.x = width + 200;
 p3.x  = width + 400;
 myport = new Serial(this , "COM10", 9600);
 myport.bufferUntil(10);
 

}


void draw(){
  
 background(0,255,0);
 game.game();
 p1.pipe();
 p2.pipe();
 p3.pipe();
 game.collide(p1);
 game.collide(p2);
 game.collide(p3);
 bird.show();
 bird.move();
    
}




void serialEvent(Serial myport){
  
   data = myport.readString();
   println(data);
   intdata = int(trim(data));
   
   if(intdata > 1 && intdata < 100){
    
     birddist = intdata;
   
   }
   
  
}

//void mousePressed(){

//bird.speed = -10;
 

 
 //}
