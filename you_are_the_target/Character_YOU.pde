class Player {
  PVector CHARposition;
  PVector velocity;
  float speed = 4;
  float size = 40;
  float lightRadius = 100; // Radius of the light effect

  Player(float x, float y) {
    CHARposition = new PVector (x, y);
    velocity = new PVector (0,0);
  }

  void update () {//not position because position doesn't change, only the velocity which will affect the speed
    velocity.set (0, 0);// set as 0 as the main
    //https://www.youtube.com/watch?v=yKv02lq7JHs inspired by 
    if (keyPressed) {
      if (key == 'w') {
        velocity.y = -speed;
      }
     if (key == 's'){
        velocity.y = speed;
      }
      if (key == 'a') {
        velocity.x = -speed;
      }
      if (key == 'd'){
        velocity.x = speed;
      }
    }
  }
  //Remember to decorateted it for aestheic!
  void display() {
    
fill(142,47,91);
    stroke (255);
    ellipse(CHARposition.x, CHARposition.y, size, size); // Always draw at the center
  }
  // call enemy class in here
  //can't believe that I type it right in the first time...
  void collide (Enemy e){
    //check the x& y postion of the player, and x&y postion of the enrmy 
    //to see if it's around the Character size
    if (dist (CHARposition.x, CHARposition.y, e.pos.x, e.pos.y) < size *1.7){
     gameOver=true; 
    }
}

}
