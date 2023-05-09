 // should possibly add something here to make it more usable instead of defining just a method
  
  
  // TODO create 3 seperate methods to connect to the constructors
  // We can't overload the method because all 3 have string properties for teh shapes, and it wouldn't make a difference because
  // we would need to specifically type check for what string it is
  // better to just make 3 different methods for readability
  void createSquareExplosion(int numberOfShapes, float posX, float posY, int sideLength, 
         float mx, float my, float mgrav, float grav, int c, int a, int ma) {
    
    try {
        //we need to handle the exception
      for(int i = 0; i < numberOfShapes; i++) {  
          // parameters must match constructor type
          shapeList.add(new Shape("square", posX, posY, sideLength, mx, my, mgrav, grav, c, a, ma)); 
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
           
   }
   
   void createCircularExplosion(int numberOfShapes, float posX, float posY, float radius, 
         float mx, float my, float mgrav, float grav, int c, int a, int ma) {
    try {
        //we need to handle the exception
      for(int i = 0; i < numberOfShapes; i++) {  
          // parameters must match constructor type
          shapeList.add(new Shape("square", posX, posY, radius, mx, my, mgrav, grav, c, a, ma)); 
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
   }
   
   void createRectangularExplosion(int numberOfShapes, float posX, float posY, float w, float h, 
         float mx, float my, float mgrav, float grav, int c, int a, int ma) {
    try {
        //we need to handle the exception
      for(int i = 0; i < numberOfShapes; i++) {  
          // parameters must match constructor type
          shapeList.add(new Shape("rectangle", posX, posY, w, h, mx, my, mgrav, grav, c, a, ma)); 
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
   }
 
