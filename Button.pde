class Button {
  float lengthX;
  float lengthY;
  float heightX;
  float heightY;
  float buttonW;
  float buttonH;
  
  Button(float x, float y, float buttonW){
    
   this.lengthX = x;
   this.lengthY = y;
   this.heightX = x - 10.5;
   this.heightY = y + 5;
   this.buttonW = buttonW;
    
  }
  
  
  void render(){
    
    stroke(255);
    strokeWeight(2);
    line( lengthX , lengthY , buttonW , lengthY);
    line(lengthX , lengthY + 50, buttonW , lengthY + 50);
    line( heightX, heightY, heightX, heightY + 40);
    line( buttonW + 10.5, heightY, buttonW + 10.5, heightY + 40);
    
    
  }
  
  
  //void update(){
    
  //}
  
  
  
  
  
  
  
  
}