class ARC {
  
  float cx;
  float cy;
  float radius;
  float start;
  float stop;
  float speed;
  float theta;
  float frequency;
  float s, t;
  float end = 0;
  
  ARC ( float cx, float cy, float radius, float start, float stop , float frequency){

   this.cx = cx;
   this.cy = cy;
   this.radius = radius;
   this.start = start;
   this.stop = stop;
   this.frequency = frequency;
   this.speed = (TWO_PI/ 60.00 ) * frequency;
  }
  
  void update(){
    s = radians(start + theta);
    t = radians(stop + theta)- end;
    theta += speed;
    
    if(click) {
     end+= 0.045;
    } //<>//
    
  }
  
  void render(){
    arc(width / 2, height / 2, (radius * 2) , (radius * 2), s , t, OPEN);
  }
  
  void mouseClicked(){
    click = true;
  }
  
  
  
  
  
  
  
  
  
  
}