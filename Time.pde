class Time {
  
 float x;
 float y;
 int s;
 int m;
 int h;
 String text;
 
 Time(float x, float y){
   this.x = x;
   this.y = y;
 }
  
  void render(){
    
    s = second();
    m = minute();
    h = hour();
    
    text = "Time:" + h + ":" + m + ":" + s ;
    
    
    textSize(30);
    text(text, x , y);
  }
}