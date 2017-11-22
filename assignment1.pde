void setup() {
  size(500,500); 
  r = new Radar(width / 2, height / 2 ,100, .5,255);
  dot = new BeepDot(mouseX, mouseY, 0);
}

Radar r;
BeepDot dot;
 
float arcSpeed = 0.5;
int choice = 0;
float arcStart = -PI / 6;
float arcStop = PI / 6;  

void draw() {
  startMenu();
  
  //background(0);
  //r.render();
  //r.update();
  
  
}

/*void mousePressed() {
  if(mousePressed){
    dot.update();  
  }
  
}*/

void startMenu(){
  background(255);
  noFill();  
  arc(width / 2, height / 2, 100, 100,arcStart, arcStop);
  arc(width / 2, height / 2, 200, 200,arcStart, arcStop);
  arc(width / 2, height / 2, 300, 300,arcStart, arcStop);
  arc(width / 2, height / 2, 400, 400,arcStart, arcStop);
  arc(width / 2, height / 2, 500, 500,arcStart, arcStop);

  arcStart = arcStart + PI;  
  arcStop = arcStop + PI;  
}
  