class Player {
 PVector CHARposition;

 float size=40;
 
 Player(float x, float y) {
  CHARposition = new PVector (x,y);
  velocity= new PVector (0,0);

 }
  void update (){
   velocity.set (0,0); //reset the velocity 
 
  }
  void display() {
    fill(50, 100, 200);
    ellipse(CHARposition.x, CHARposition.y, size, size); // Always draw at the center
  }
}
