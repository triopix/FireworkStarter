// might also try to add different shapes of fireworks

class Firework implements IEntity {
  
  float x;
  float y;
  float target;
  float speedY;
  int c;
  
  Firework(float _x, float _y, float _target, float _speedY, int _c){
    x = _x;
    y = _y;
    c = _c;
    target = _target;
    speedY = _speedY;
  }
  
  void display(){
    
    // default firework colour
    fill(c);
    
    // have to change this
    ellipse(x,y,5,5);
  }
  
  void move(){
    y += speedY;
  }
  
  // explode!
  boolean checkTarget(){
    if(y < target){
     return true; 
    }
    return false;
  }
  
  
  
}
