class RadarDot {

  float dx;
  float dy;
  float radius;
  float speed;
  float ex;
  float ey;  
  BeepDot dot;
  
  
  RadarDot(float dx, float dy, float radius, float speed, float ex, float ey){
    
   this.dx = dx;
   this.dy = dy;
   this.radius = radius;
   this.speed = speed;
   this.ex = ex;
   this.ey = ey;
    
  };
  
  void moveDot(){
   dx = random(0,width); 
   dy = random(0,height);
    
    
  }
  
}