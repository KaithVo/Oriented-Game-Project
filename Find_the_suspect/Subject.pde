class Subject {
 PVector pos;
 PVector spd;
 color col;
 
 Subject (float xPos, float yPos, PVector speed) {
  pos= new PVector (xPos, yPos);
  spd= speed;
  col= color(random (255)) ; 
   
 }
  
 void update (){
  
   pos.add(spd);
   
   
 }
 
 void display () {
   fill (col);
   noStroke ();
   ellipse (pos.x, pos.y, 30,30);
   
   
 }
 
 
  
  
  
  
  
}
