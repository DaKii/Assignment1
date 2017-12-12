class DashBoard {
  
  
  starMap m;
  Radar r;
  int borderW = width / 4;
  int borderH =  height / 4;
  int buttonAmount = 2;
  int buttonInterval = borderH / 3;
  int j;
  
  ArrayList<Button> buttons = new ArrayList<Button>();
  
  DashBoard(){
    
    this.m = new starMap( width / 32 , height /32);
    this.r = new Radar( (width / 4) / 2 ,  -(height / 4 ) / 2 ,100, .5,255);
   for(i = 0; i < buttonAmount; i++){ 
     for( j = 0; j < buttonAmount; j++){
       buttons.add(new Button( borderW / 10  , (buttonInterval) + buttonInterval * j ,  borderW - borderW / 4));
     };
     buttons.add(new Button( borderW / 10  , (buttonInterval) + buttonInterval * i ,  borderW - borderW / 4));
    };
  }
  
  void render(){
   background(0);
   fill(255);
   //Covers the top white.
   rect(0,0, width , borderH);
   
   //creates the top border and bottom border layout
   fill(0,128,200);
   stroke(0);
   pushMatrix();
   translate(borderW , 0);
   rect(0 , 0, width / 2 , borderH / 2);
   translate(0 , height - borderW / 2);
   fill(0,128,200);
   rect(0, 0 , width / 2 , borderH);
   fill(255);
   rect(0 , 0, width / 2 , borderH / 4);
   stroke(0);
   popMatrix();

   //creates the left side layout   
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
   stroke(0);
   
   //creates the right side layout
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
   
   
   //buttons for bttom
   strokeWeight(5);
   for ( i = 0; i  < buttonAmount; i++){
     pushMatrix();
     translate(0,height - borderH);
     Button button = buttons.get(i);
     //button.update
     button.render();
     popMatrix();
     for ( j = 0; j < buttonAmount; j++){
       pushMatrix();
       translate(width - (borderW - borderW /10), height- borderH);
       //button.update();
       button.render();
       popMatrix();
     };
   }
   
   //renders and updates the rader
   r.render();
   r.update();
   
   pushMatrix();
   translate(borderW,borderH);
   m.render();
   popMatrix();
 
  }
}