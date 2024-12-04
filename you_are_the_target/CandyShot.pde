class Candy {
  PVector position;
  PVector velocity;
  float size =25;
  float speed=5;
  float distance;
  
  Candy (float x, float y, float targetX, float targetY){
  position= new PVector (x,y); 
  distance = dist (x,y,targetX, targetY);
  }
   void update(){// like the enermy, since it will be moving and spouse constanstly like the enermy
    position.add(velocity);
    
  }
  
  void display(){
    //Pink color
fill (247,190,226);
ellipse(position.x, position.y, size,size);
  }
  
 
  
  void hit (Enemy e) { // like collide in player class
   if (dist (position.x, position.y, e.pos.x, e.pos.y) < size/2 + e.size/2){
     println ("Trick or TREATTTT!!"); 
    }
  }
}
