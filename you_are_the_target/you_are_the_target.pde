int points = 0; 
boolean gameOver = false; 

Player ply;  
ArrayList <Candy> candy; 
ArrayList<Enemy> ene; // List to store multiple enermies
ArrayList<Bush> bushes; // List of bushes as obstacles


void setup(){
 size(400,400);
  ply = new Player(width / 2, height / 2);//Player stay in the middle
 ene = new ArrayList<Enemy>(); // Initialize enermies
 bushes = new ArrayList<Bush>(); // Initialize bushes
 candy = new ArrayList <Candy>();
  // Create random bushes, 10 bushes at a time and loop when get out of the frame
  for (int i = 0; i < 10; i++) {
    bushes.add(new Bush(random(width), random(height)));
  }
  
   // Spawn three ghosts
 for (int i = 0; i < 3; i++) {
  ene.add(new Enemy(random(width), random(height)));
 }

}
void draw(){
  if (gameOver){
    GameOver();
  }else {
 background (68,74,98); 
//flashlight

 //The target box will be random each round
   // Update and display the player
    ply.update();
    ply.display();
    //calling the cllide and get affect right at the 1 enermy got touched
    ply.collide(ene.get(0));

     //Update and display the enermies
    for (int i = ene.size() - 1; i >= 0; i--) {
      Enemy e = ene.get(i);
      e.update();
      e.display();
    }

        // Draw and update all bushes
 for (Bush b : bushes) {
      b.move(ply.velocity); //player moves based on the player's velocityyyyyyyy
      b.display();
    }
      // if add can affect the vector inside it... I add the Vector of player velocity inher
     // so bushes movement will have to depends on it
    
  fill(0);
    textSize(20);
    text("Score: " + points, 50, 30);
}
//candy have no limit
    for (int i = candy.size() - 1; i >= 0; i--) {
      Candy c = candy.get(i);
      c.update(); 
      c.display();
      c.hits(ene);
       }
 //counting point by checking the collision on enemies
 //using loops but different letter since it will confused, since diso
       
}

void mousePressed (){
  if(!gameOver){ //if the game over is true, stop throwing the candy
  // Candy (float x, float y, float targetX, float targetY){ first 2 indicates the root  and last 2 indicates where it goes, which is mouseX, mouseY
  Candy c = new Candy(ply.CHARposition.x, ply.CHARposition.y, mouseX, mouseY);
  candy.add(c);
  }
  
}
  
void GameOver () {

background(50);
  fill(255, 0, 0,200);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("Game Over!", width / 2, height / 2);
  textSize(25);
  fill(255);
  text("Final Score: " + points, width / 2, height / 2 + 50);
  textSize(16);
  text("Press 'R' to Restart", width / 2, height / 2 + 70); // Restart hint
    
}


void keyPressed(){
 if (key == 'r') {
   gameOver = false;
 //reset enermies
 ene.clear();
   for (int i = 0; i < 3; i++) {
  ene.add(new Enemy(random(width), random(height)));
 }
 }
  
}
