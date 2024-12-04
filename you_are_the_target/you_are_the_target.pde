int points = 0; 
boolean gameOver = false; 

Player ply;  
Candy candy; 
ArrayList<Enemy> ene; // List to store multiple enermies
ArrayList<Bush> bushes; // List of bushes as obstacles


void setup(){
 size(400,400);
  ply = new Player(width / 2, height / 2);//Player stay in the middle
 ene = new ArrayList<Enemy>(); // Initialize enermies
 bushes = new ArrayList<Bush>(); // Initialize bushes
 candy = new Candy ( width/2, height/2);
  // Create random bushes, 10 bushes at a time and loop when get out of the frame
  for (int i = 0; i < 10; i++) {
    bushes.add(new Bush(random(width), random(height)));
  }
  
   // Spawn three subjects
 for (int i = 0; i < 3; i++) {
  ene.add(new Enemy(random(width), random(height)));
 }

}
void draw(){
  if (gameOver){
    GameOver();
  }else {
 background (200); 

 //The target box will be random each round
   // Update and display the player
    ply.update();
    //calling the cllide and get affect right at the 1 enermy got touched
    ply.collide(ene.get(0));

     //Update and display the enermies
 for (Enemy e : ene) {
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
     ply.display();
  fill(0);
    textSize(20);
    text("Score: " + points, 50, 30);
}

}

void mousePressed (){
  //constraint like did in the christmast tree, but the obect will move
     candy.display();
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
