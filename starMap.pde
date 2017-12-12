class starMap{
 float x;
 float y;
 float interval;
 float amount;
 float gridW;
 float gridH;
 int i;
 int j;
 
 starMap(float x, float y){
  this.x = x;
  this.y = y;
  this.interval = width / 32;
  this.gridW = (width / 2);
  this.gridH = (height / 2);
  this.amount = 32;
  
 }
  
  void render(){
    for(i = 0 ; i < 15; i++){
       line(x + (interval * i) , y , x + (interval * i), y + (height / 2 - height / 32)); 
       for( j = 0; j < 13; j++){
         line(x , y + (interval * j) , width / 2 - width / 32, y + (interval * j)); 
       }  
  }
    
    
    
  }
  
  void update(){
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
}