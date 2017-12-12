class Bar{
 float x;        
 float y;
 float barW;
 float barH;
 float random;
 float time;
  
  Bar(float x , float y , float barW , float barH){
    
    this.x = x;
    this.y = y;
    this.barW = barW;
    this.barH = barH;
    this.time = 60;
  }
  
  void render() { 
    
   fill(0);
   if ( barH >= 50 && barH < 100) {
     rect( x , y , barW , -(barH--) );
   }
   if ( barH <= 0 || barH < 49) {
    rect( x , y , barW , barH); 
    barH++;
   }
  }
}