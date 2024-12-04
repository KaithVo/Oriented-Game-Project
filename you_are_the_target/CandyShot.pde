class Candy {
  PVector position;
  PVector velocity;
  float size =10;
  float speed=5;
  
  Candy (float x, float y){
  position= new PVector (x,y); 
  //https://processing.org/tutorials/pvector/#vectors-normalizing reference from
  
  }
  
  void display(){
   
  PVector mouse = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  mouse.sub(center);

  // In this example, after the vector is normalized it is
  // multiplied by 50 so that it is viewable onscreen.
  // Note that no matter where the mouse is, the vector will
  // have same length (50), due to the normalization process.
  mouse.normalize();
  mouse.mult(400);
stroke(2);
  translate(width/2,height/2);
  line(0,0,mouse.x,mouse.y);
 
  }
}
