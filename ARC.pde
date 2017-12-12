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
  float end;
  float rMax;
  float rMin;
  float strokeIntensity;
  
  ARC ( float cx, float cy, float radius, float start, float stop , float frequency){

   this.cx = cx;
   this.cy = cy;
   this.radius = radius;
   this.start = start;
   this.stop = stop;
   this.frequency = frequency;
   this.speed = (TWO_PI/ 60.00 ) * frequency;
   this.end = 0;
   this.rMax = radius + 50;
   this.rMin = radius;
   this.strokeIntensity = 3;
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
    strokeWeight(strokeIntensity);
    arc(0, 0, (radius * 2) , (radius * 2), s , t, OPEN);
  }
  
  void mouseClicked(){
    click = true;
  }
  
  //Makes the arc increase in size when hovered over
  void hover(){
    if ( mouseX >= (width / 2 - radius) && mouseX <= (width /2 + radius) && mouseY >= height / 2 -  radius && mouseY <= height / 2 + radius && radius < rMax){
       radius++; 
       if(strokeIntensity < 7){
         strokeIntensity++;
         }
    }
    else if (  radius > rMin) {
       radius--; 
       if( strokeIntensity > 3){
         strokeIntensity--;
       }
        
      } 
    }
}