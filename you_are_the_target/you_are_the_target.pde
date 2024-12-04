Player ply;  
ArrayList<Subject> subs; // List to store multiple subject
ArrayList<Bush> bushes; // List of bushes as obstacles
int points=0; 
boolean gameOver = false; 


void setup(){
 size(600,400);
  ply = new Player(width / 2, height / 2);
 subs = new ArrayList<Subject>(); // Initialize subject
 bushes = new ArrayList<Bush>(); // Initialize bushes
 
  // Create random bushes
  for (int i = 0; i < 10; i++) {
    bushes.add(new Bush(random(width), random(height)));
  }
  
   // Spawn three bugs
  for (int i = 0; i < 3; i++) {
    subs.add(new Subject());
  }

}
void draw(){
 background (200); 
 //The target box will be random each round
   // Update and display the player
    ply.update();
    ply.display();

    // Update and display the SUBS
    for (Subject sub : subs) {
      sub.update();
      sub.display();
    }
    
        // Draw and update all bushes
    for (Bush b : bushes) {
      b.display();
      b.move ();
    }


rect (width/2, height/2, 100,100);
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
