color targetColor;
color movingSubject;
int points=0; 

void setup(){
 size(600,400);
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


}

void mousePressed (){
  
}
