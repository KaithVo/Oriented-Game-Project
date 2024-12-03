class Subject {
 PVector pos;
 PVector spd;
float size=30;
 
 Subject () {
  pos = new PVector(random(width), random(height)); // Start randomly in the world
  spd= new PVector(0,0) ;
 }
  
 void update (){
   pos.add(spd);
 }
 
 void display () {
   fill (0);
   noStroke ();
   ellipse (pos.x, pos.y, size,size);
   
   
 }
 

}
