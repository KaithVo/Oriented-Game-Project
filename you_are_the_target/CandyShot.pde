class Candy {
  PVector position;
  PVector velocity;
  float size =20;
  float speed=5;

  
  Candy (float x, float y, float targetX, float targetY){
  position= new PVector (x,y); 
  float distance = dist (x,y,targetX, targetY);
  float dx= targetX - x; //distance for x
  float dy= targetY- y; //distance for y
  
  velocity= new PVector (dx/distance *speed, dy/ distance * speed);
  
  }
   void update(){// like the enermy, since it 's be moving and spouse constanstly everytime dispappear like the enermy
    position.add(velocity);
    
  }
  
  void display(){
    noStroke();
    //Pink color
fill (247,190,226);
ellipse(position.x, position.y, size,size);
 // Draw the central candy body
  fill(247, 190, 226); // Pink color
  ellipse(position.x, position.y, size, size); // Round central candy body
  
  // Draw the candy wrappers
  fill(220, 150, 200); // Slightly darker pink for wrappers
  triangle(position.x - size, position.y - size / 2, // Left wrapper top
           position.x - size / 2, position.y,       // Left wrapper center
           position.x - size, position.y + size / 2); // Left wrapper bottom
           
  triangle(position.x + size, position.y - size / 2, // Right wrapper top
           position.x + size / 2, position.y,       // Right wrapper center
           position.x + size, position.y + size / 2); // Right wrapper bottom
  
  }
  //what if I call the whole thing in here?
  void hits (ArrayList<Enemy>ene) { // like collide in player class
  //loop so that the enermies will get off the screen completely after get defeated
  for (int i = ene.size() - 1; i >= 0; i--) {
      Enemy e = ene.get(i);
      if (dist(position.x, position.y, e.pos.x, e.pos.y) < size / 2 + e.size / 2) {
        // Enemy hit by candy, remove enemy and increase score
        ene.remove(i);
        points += 1; // Increase score by 10 for each enemy hit
      // Stop checking after the first enemy hit
       println ("Trick or TREATTTT!!");   
    }
      
 
    }
  }
}
