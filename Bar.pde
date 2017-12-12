class Bar{
 float x;        
 float y;
 float barW;
 float barH;
  
  Bar(float x , float y , float barW , float barH){
    
    this.x = x;
    this.y = y;
    this.barW = barW;
    this.barH = barH;
    
  }
  
  void render() {
   fill(0); 
   rect( x , y , barW ,barH);
    
  }
}