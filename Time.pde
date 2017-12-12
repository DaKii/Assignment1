class Time {
  
 float x;
 float y;
 float s;
 float m;
 float h;
 
 
 Time(float x, float y){
   this.x = x;
   this.y = y;
   this.s = second();
   this.m = minute();
   this.h = hour();
 }
  
  
  
}