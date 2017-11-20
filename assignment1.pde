void setup() {
  fullScreen(SPAN); 
  r = new Radar(width / 2, height / 2 ,100, .5,255);
}

Radar r;

  
void draw() {
  background(0);
  r.render();
  r.update();
  
  
}

void mousePressed() {
  exit(); 
}