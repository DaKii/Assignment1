class DashBoard {
  
  
  int borderW = width / 4;
  int borderH =  height / 4;
  
  void render(){
   background(0);
   fill(125);
   rect(0 , borderH , width /4 , height /2); 
   rect((width - width/ 4), borderH , borderW , height /2); 
   
   triangle(0 , borderH / 2 , 0 , height / 4 , borderW , borderH);
   triangle(width , borderH / 2 , width , borderH , (width - borderW) , borderH); 
   
   quad(0 , (height - borderH ) + (borderH /4) , borderW , (height - borderH ) + (borderH /4) , borderW + (borderW / 4) , height, borderW / 4 , height); 
   quad(width - borderW , (height - borderH ) + (borderH /4) , width , (height - borderH ) + (borderH /4) , width - borderW / 4 , height, width - (borderW + borderW / 4) , height); 
  }
  
  
}