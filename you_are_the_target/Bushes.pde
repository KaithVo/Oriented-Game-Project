class Bush {
  PVector position; // Position of the bush
 PVector velocity;
  float speed= 4;
  float size = 50; // Size of the bush

  Bush(float x, float y) {
    position = new PVector(x, y); // Set the position of the bush
  }
  
    // Display the bush
  void display() {
    fill(34, 139, 34);
    rect(position.x, position.y, size, size);
  }
  //off set to wrap around the player
  
void move () {
  if (keyPressed) {
      if (key == 'w') {
        velocity.y = speed;
      }
     if (key == 's'){
        velocity.y = -speed;
      }
      if (key == 'a') {
        velocity.x = speed;
      }
      if (key == 'd'){
        velocity.x = -speed;
      }
    }
  
}
  
}
