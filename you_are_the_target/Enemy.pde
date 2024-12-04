//subject will go around the screen like they target the player
class Enemy {
 PVector pos;
 PVector vel;
 float spd = random (-2,2);
float size=30;
 
 Enemy (float x, float y) {
  pos = new PVector(x, y); // Start randomly in the world
  vel= new PVector(spd,spd);
 }
  
 void update (){
   pos.add(vel); //position will be keep adding by the velocity
 //if positionx lager than the max width it goes back to 0...
  if (pos.x > width) {
    pos.x = 0;
  }
    //if positionx lower than 0 it goes to the max wdith...
    if (pos.x < 0) {
    pos.x = width;
  }
  //do the same with the height
    if (pos.y > height) {
      pos.y = 0;
    }
    if (pos.y < 0) {
      pos.y = height;
 }
 }
 void display () {
   fill (0);
   noStroke ();
   ellipse (pos.x, pos.y, size,size);
 }
}
