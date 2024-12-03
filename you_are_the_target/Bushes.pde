class Bush {
  PVector position; // Position of the bush
  float size = 50; // Size of the bush

  Bush(float x, float y) {
    position = new PVector(x, y); // Set the position of the bush
  }
  
    // Display the bush
  void display() {
    fill(34, 139, 34);
    rect(position.x, position.y, size, size);
  }
  
}
