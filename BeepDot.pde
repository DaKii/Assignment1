class BeepDot {
  float cx;
  float cy;
  float radius = 0;
  float time = 200;
  int i;
  
  BeepDot(float cx,float cy, float radius){
   this.cx = cx;
   this.cy = cy;
   this.radius = radius;
  }
  
  
  
  void update(){
    for( i = 0; i < time; i++){
     
    fill(0);
    strokeWeight(10);
    ellipse(cx,cy,radius,radius);
    radius++; 
    }
    
  }
  
  
}