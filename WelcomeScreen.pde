class WelcomeScreen {
  
  float colour;
  int time;
  int arcAmount = 5;
  int i;
  int cX = width / 2;
  int cY = height /2;
  int radius = 100;
  
  float start = 45;
  float stop = 180;
  
   ArrayList<ARC> arcs = new ArrayList<ARC>();  
  
  
  WelcomeScreen(){
    
   for ( i = 0; i < arcAmount; i++ ) {
     float start = random(0,360);
     float stop = start + random(100, 300);
     
     int speed = 10;
     if(i == 4 || i == 2 ){   
       speed *= -1;
     }
     arcs.add(new ARC( cX , cY, radius + ( 50  * i ) , start , stop, speed));
   }
  }
    
  
  void render(){
     
    background(0);
    textAlign(CENTER);
    fill(255);
    translate(width / 2 , height / 2);
    pushMatrix();
    text("WELCOME TO ARC UI" , 0 , 0);
    text("CLICK ANYWHERE TO ENTER" , 0  , 0 + 12);
    noFill();
    strokeWeight(3);
    stroke(0,128,200);
    
    for(i = arcs.size()-1; i >= 0; i--){
      
      ARC arc = arcs.get(i);
      

      arc.update();
      arc.render();
      if(arc.s >= arc.t){
        arcs.remove(i);
      }
      arc.hover();

    }
    popMatrix();
  }
  


}