class Character {
 PVector CHARposition;
 PVector offset;
 PVector velocity;
 float speed;
 float size;
 
 Character() {
  CHARposition = new PVector (0,0);
  velocity= new PVector (0,0);

 }
  void update (){
    
   velocity.set (0,0); //reset the velocity 
   
  if (keyPressed) {
      if (key == 'w') velocity.y = -speed;
      if (key == 's') velocity.y = speed;
      if (key == 'a') velocity.x = -speed;
      if (key == 'd') velocity.x = speed;
    }

    CHARposition.add(velocity); // Update position
    offset = PVector.sub(CHARposition, new PVector(width / 2, height / 2)); // Calculate offset
 
  }
  void display() {
    fill(50, 100, 200);
    ellipse(width / 2, height / 2, size, size); // Always draw at the center
  }
}
