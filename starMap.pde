class starMap{
 float x;
 float y;
 float interval;
 float amountW;
 float amountH;
 int i;
 int j;
 
 starMap(float x, float y){
  this.x = x;
  this.y = y;
  this.interval = width / 32;
  this.amountW = 15;
  this.amountH =  8;
  
 }
  
  void render(){
    for(i = 0 ; i < amountW; i++){
       line(x + (interval * i) , y , x + (interval * i), y +(amountH * interval)); 
       for( j = 0; j <= amountH; j++){
         line(x , y + (interval * j) , width / 2 - width / 32, y + (interval * j)); 
       }  
  }
    
    
    
  }
  
  void update(){
    
    
    
  }
  
  
  void loadTable(){
    
   //Table table = loadTable("planetData.csv");
    
    
    
  }
  
  
  
  
  
  
  
  
  
  
  
}