class Bar{
 float x;        
 float y;
 float barW;
 float barH;
 float random;
 float time;
 float bMax;
 float bMin;
 
 
 int change = 0;
  
  Bar(float x , float y , float barW , float barH){
    
    this.x = x;
    this.y = y;
    this.barW = barW;
    this.barH = barH;
    this.time = 60;
    this.bMax = barH - 50;
    this.bMin = 0;
    this.change = 1;
  }
  
  void render() { 
    rect(x , y , barW  ,barH);
      barH += change;
  }
  
  
  
  void update(){
    if(barH > bMin || barH < bMax )
    {
      change*=-1;
    }
  }
}