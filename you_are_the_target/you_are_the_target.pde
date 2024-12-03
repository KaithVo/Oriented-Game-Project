Character player; //player
int points=0; 

Subject[] sub;

void setup(){
 size(600,400);
 player = new Character (); 
 sub = new Subject [10];
}

void draw(){
 background (200); 
 //The target box will be random each round
 fill(targetColor);
  rect(10, 10, 50, 50);
  fill(255);
  textSize(16);
  text("Target Color", 70, 35);
  text("Points: " + points, 70, 60);

//Display the subject
sub.update ();
sub. display();

}

void mousePressed (){
  //constraint like did in the christmast tree, but the obect will move
  for ( int i= sub.size() - 2; i>=0; i--) {
    
  }
  
}
