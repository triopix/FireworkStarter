ArrayList<Shape> shapeList;
ArrayList<Firework> fireworkList;

int NUMBER_OF_SHAPES = 20;
String shape = "ball"; // set shape to ball
// shape x/y coord defined by firework .x and .y positions
float w = random(1, 10); // width (rectangle)
float h = random(1, 10); // height (rectangle)

int sideLength = (int) random(1, 10); // square - equal side lengths on every side
float radius = random(1, 10); // circle radius
 
// Movement related stuff
float mx = random(-5, 5); // change in x - controlled by cos()
float my = random(-5, 5); // change in y - controlled by sin()
float mgrav = random(0.1, 0.5); // change in gravity
float grav = random(0.1, 0.5); // gravity
   
// Color related stuff
int c = (int) random(0, 255); // hue color
int a = 255; // alpha for transperancy
int ma = (int) random(2, 6); // change in the alpha value

  
// firework stuff
float fireX = mouseX;
float fireY = height;
float fireworkSpeedY = -5;
float target = 100;
int fireworkColour = 255;

void setup(){
  size(600,400, P2D);
  colorMode(HSB);
  shapeList = new ArrayList<Shape>();
  fireworkList = new ArrayList<Firework>();
}


void draw(){
  background(0);
  
   for (int i = fireworkList.size()-1; i >= 0; i--) { 
    Firework f = fireworkList.get(i);
    
    //Check if we should remove each ball from the list
    if(f.checkTarget() == true){
     fireworkList.remove(i); 
     
     // we define our shape's properties right here!!! Very important 
     // TODO
      createCircularExplosion(NUMBER_OF_SHAPES, f.x, f.y, mx, my, radius, mgrav, grav, c, a, ma);
    }
    
    
    // Firework also has it's own 
    // calling display decrements the "change in alpha" variable by 1 - due to being updated in the loop
    // in normal programming we would need to define a while loop for this to work - processing makes it easier
    f.display();//The '.' allow you to access methods and variables of the object
    f.move();
  }
  
  for (int i = shapeList.size()-1; i >= 0; i--) { 
    Shape s = shapeList.get(i);
    
    // Removing the shape from the list based on the condition in kill()
    if(s.kill()){
     shapeList.remove(i); 
    }
    
    // display and move work together to fully "display" the firework and "move it" at the same time
    s.display("ball"); //The '.' allow you to access methods and variables of the object
    s.move();
  }
  
  println("size of list is: " + shapeList.size());
}

void mousePressed(){
  
  // the x and y position is where the firework should pop, this is where we do initialize a new firework object
  fireworkList.add(new Firework(mouseX, height, target, fireworkSpeedY, fireworkColour));
  println("firework added");
  
  
}
