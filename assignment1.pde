void setup() {
  fullScreen(SPAN); 
  r = new Radar(width / 2, height / 2 ,100, .5,255);
  dot = new BeepDot(mouseX, mouseY, 0);
}

Radar r;
BeepDot dot;
  
void draw() {
  background(0);
  r.render();
  r.update();
  
  
}

void mousePressed() {
  if(mousePressed){
    dot.update();  
  }
  
}