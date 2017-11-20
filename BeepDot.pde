class BeepDot {
  float cx;
  float cy;
  float radius = 0;

  
  BeepDot(float cx,float cy, float radius){
   this.cx = cx;
   this.cy = cy;
   this.radius = radius;
  }
  
  
  
  void update(){
    
  fill(0);
  ellipse(cx,cy,radius,radius);
  radius++;
    
  }
  
  
}