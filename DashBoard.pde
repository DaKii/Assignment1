class DashBoard {
   
  int borderW = width / 4;
  int borderH =  height / 20;
  int buttonAmount = 5;
  int textW = 100;
  int i;
  
  ArrayList<Button> buttons = new ArrayList<Button>();
  
  void render(){
   background( 255);
   noFill();
   stroke(0,125,255);
   
   
   
   
   strokeWeight(2);
   line( borderW, borderH , borderW , height - borderH);
   
   fill(0,125,255);
   quad(borderW / 8, height / 4 - borderH, borderW / 3.5 ,height / 4 - borderH, borderW / 2, borderH , 100 , borderH);
   pushMatrix();
   translate(borderW / 3.5, 0);
   quad( borderW / 8, borderH , borderW / 3.5 , borderH, borderW  / 2, height / 4 - borderH, 100  ,height / 4 - borderH);
   popMatrix();
   
   for ( i = 0; i < buttonAmount; i++){
     buttons.add(new Button( borderW / 8 , textW * i , borderW - borderW / 8));
   }
   
   for(i = 0; i < buttons.size(); i++){
     pushMatrix();
     translate( 0 , height /4);
     Button button = buttons.get(i);
     button.render();
     popMatrix();
   }
    
     pushMatrix();
     translate( borderW / 8 , height /4);
     text("Map" , textW , textW / 4);
     text("Helo" , textW , textW / 4 + textW);
     text("Helo" , textW , textW / 4 + textW * 2);
     text("Helo" , textW , textW / 4 + textW * 3);
     text("Helo" , textW , textW / 4 + textW * 4);
     text("Helo" , textW , textW / 4 + textW * 5);
     popMatrix();
     
   
   
   
   
  }
  
  
}