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
  
  void hit (Enemy e) { // like collide in player class
   if (dist (position.x, position.y, e.pos.x, e.pos.y) < size/2 + e.size/2){
     println ("Trick or TREATTTT!!"); 
    }
  }
}
