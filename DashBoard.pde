class DashBoard {
  
  
  int borderW = width / 4;
  int borderH =  height / 4;
  
  void render(){
   background(0);
   fill(0,128,200);
   stroke(255);
   
   pushMatrix();
   translate(borderW , 0);
   rect(0 , 0, width / 2 , borderH / 2);
   translate(0 , height - borderW / 2);
   fill(0,128,200);
   rect(0, 0 , width / 2 , borderH);
   fill(255);
   rect(0 , 0, width / 2 , borderH / 4);
   stroke(255);
   popMatrix();

   
   fill(0,128,200);
   rect(0 , borderH , borderW , height /2); 
   triangle(0 , borderH / 2 , 0 , borderH , borderW , borderH);
   triangle(0 , 0 , borderW , 0 , borderW , borderH / 2);
   quad(0 , (height - borderH ) + (borderH / 4) , borderW , (height - borderH ) + (borderH /4) , borderW + (borderW / 4) , height, 0 , height); 
   fill(255);
   stroke(0);
   rect(0, height - borderH, borderW + (borderW / 12) ,borderH / 4);
   quad(borderW + (borderW / 12) , height - borderH , borderW, height - (borderH - borderH / 4) , borderW + (borderW / 4) , height , (borderW + (borderW / 4)) + borderW / 8 , height); 
   fill(255);
   stroke(255);
   
   pushMatrix();
   translate(width - borderW , 0);
   fill(0,128,200);
   rect(0 , borderH , borderW , height /2);
   quad(0 , (height - borderH ) + (borderH / 4) , borderW , (height - borderH ) + (borderH /4) ,  borderW  , height, -(borderW / 4) , height); 
   triangle(borderW , borderH / 2 , 0 , borderH , borderW , borderH); 
   triangle(0 , 0 , borderW , 0 , 0 , borderH / 2);
   fill(255);
   stroke(0);
   rect(-(borderW/12), height - borderH, borderW + (borderW /12) ,borderH / 4);
   quad(-(borderW / 12) , height - borderH , 0, height - (borderH - borderH / 4) ,  - (borderW /4 ) , height ,  - (borderW / 4) - borderW / 8 , height); 
   fill(255);
   popMatrix();
   
   
   
   

   
   
  }
  
  
}