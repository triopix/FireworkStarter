class Shape {
 
  // options include having a ball shape, square, rectangle and
  // future options might include quads of different side lengths
  
  
  // Shape stuff
  
  String shapeType;
  String exceptionMessage = "Invalid shape type";
  float x; // x position
  float y; // y position
  float w; // width (rectangle)
  float h; // height (rectangle)
  int sideLength; // square - equal side lengths on every side
  float radius; // circle radius
 
  // Movement related stuff
  float mx; 
  float my; 
  float mgrav; // change in gravity
  float grav; // gravity
   
  // Color related stuff
  int c; // hue color
  int a; // alpha for transperancy
  int ma; // change in the alpha value
  
  // circle/ball
  Shape(String shpType, float _x, float _y, float _radius, float _mx, float _my, float _mgrav, float _grav, int _c, int _a, int _ma) throws Exception {
    if(shpType.equals("ball") || shpType.equals("Ball") || shpType.equals("circle") || shpType.equals("Circle")) {
      // initialize our variables
      shapeType = shpType;
      x = _x;
      y = _y;
      radius = _radius;
      mx = _mx;
      my = _my;
      mgrav = _mgrav;
      grav = _grav;
      c = _c;
      a = _a;
      ma = _ma;
    } else {
      throw new Exception(exceptionMessage);
    }
  }
  
  // rectangle
  Shape(String shpType, float _x, float _y, float _w, float _h, 
         float _mx, float _my, float _mgrav, float _grav, int _c, int _a, int _ma) throws Exception {
    if(shpType.equals("rectangle") || shpType.equals("Rectangle")) {
      // initialize our variables
      shapeType = shpType;
      x = _x;
      y = _y;
      w = _w;
      h = _h;
      mx = _mx;
      my = _my;
      mgrav = _mgrav;
      grav = _grav;
      c = _c;
      a = _a;
      ma = _ma;
    } else {
      throw new Exception(exceptionMessage);
    }
  }
  
  // square
  Shape(String shpType, float _x, float _y, int _sideLength, 
         float _mx, float _my, float _mgrav, float _grav, int _c, int _a, int _ma) throws Exception {
    if(shpType.equals("square") || shpType.equals("Square")) {
      // initialize our variables
      shapeType = shpType;
      x = _x;
      y = _y;
      sideLength = _sideLength;
      mx = _mx;
      my = _my;
      mgrav = _mgrav;
      grav = _grav;
      c = _c;
      a = _a;
      ma = _ma;
    } else {
      throw new Exception(exceptionMessage);
    }
  }
  
  
  
  // display will display shapes based on what shape is called
  void display(String shape) {
    a-= ma; // subtract from the alpha value - as 
    
    // fill the shape based on parameters given
    fill(c, 200,255, a); //the 4th parameter is alpha
    
    if(shape.equals("ball") || shape.equals("Ball") || shape.equals("circle") || shape.equals("Circle")) {
      ellipse(x, y, 20, 20); // draws circle
    } else if(shape.equals("square") || shape.equals("Square")) {
      square(x, y, sideLength); // draws a square
    } else if(shape.equals("rectangle") || shape.equals("Rectangle")) {
      rect(x, y, w, h);
    } else {
      println("Invalid");
    }
  }
  
  // move() function - moving the shape object based on changes in x/y position and acceleration due to gravity
  void move(){
    x += mx;
    grav += mgrav;
    y += my + grav;
  }
  
  boolean kill(){ //this function will return false until the alpha is less than 1 - removes the ball from the list
   if(a > 1 ){
    return false; 
   }
   else{
    return true; // at this point - remove the ball from the list
   }
  }
 
  // rest of the code...
}
