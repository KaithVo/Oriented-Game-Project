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
   
   //update position everytime move
  PVector updatePosition = PVector.add (CHARposition, velocity);
  }
  
  
}
