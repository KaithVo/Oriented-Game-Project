Character player; //player
int points=0; 
boolean gameOver = false; 

Subject[] sub;

void setup(){
 size(600,400);
 player = new Character (); 
 sub = new Subject [10];
}

void draw(){
 background (200); 
 //The target box will be random each round
   // Update and display the player
    player.update();
    player.display();

  fill(0);
    textSize(20);
    text("Score: " + points, 50, 30);
}

void mousePressed (){
  //constraint like did in the christmast tree, but the obect will move
    
  }
  
void GameOver () {

background(50);
  fill(255, 0, 0);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("Game Over!", width / 2, height / 2);

  textSize(25);
  fill(255);
  text("Final Score: " + points, width / 2, height / 2 + 50);
}
