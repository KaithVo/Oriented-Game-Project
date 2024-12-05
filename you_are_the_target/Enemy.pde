//subject will go around the screen like they target the player
class Enemy {
 PVector pos;
 PVector vel;

float size= 40;
 
 Enemy (float x, float y) {
  pos = new PVector(x, y); // Start randomly in the world
  vel= new PVector(random (-2,2),random (-2,2));
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
   noStroke();
   fill (140);
   ellipse (pos.x, pos.y, size,size);
rect (pos.x-20, pos.y, size, size);
fill(20);
ellipse( pos.x-10, pos.y, 10, 15);
ellipse( pos.x+10, pos.y, 10, 15);
 }

}
