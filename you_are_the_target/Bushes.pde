class Bush {
  PVector position; // Position of the bush
  float size = 60; // Size of the bush

  Bush(float x, float y) {
    position = new PVector(x, y); // Set the position of the bush
  }
  
    // Display the bush
  void display() {
    fill(34, 139, 34);
    noStroke ();
    ellipse(position.x, position.y, size, size);
    ellipse(position.x-10, position.y-10, size, size);
    ellipse(position.x+10, position.y-5, size, size);
  }
  //off set to wrap around the SCREEN

void move (PVector playerVelo) {
    // Instead of using sub(), manually update the position
    position.x -= playerVelo.x; // Move bush opposite to player's horizontal movement
    position.y -= playerVelo.y; // Move bush opposite to player's vertical movement

  //if positionx lager than the max width it goes back to 0...
  if (position.x > width) {
    position.x = 0;
  }
    //if positionx lower than 0 it goes to the max wdith...
    if (position.x < 0) {
    position.x = width;
  }
  //do the same with the height
    if (position.y > height) {
      position.y = 0;
    }
    if (position.y < 0) {
      position.y = height;

}
}
}
