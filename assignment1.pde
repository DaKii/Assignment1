void setup() {
  fullScreen(SPAN);
  r = new Radar(width / 2, height / 2 ,100,.5,255);
  d = new DashBoard();
}

Radar r;
RadarDot rd;
DashBoard d;


int radarAmount = 4;
int i;  
  
ArrayList<RadarDot> radarDots = new ArrayList<RadarDot>();  
  
void draw() {
  d.render();
  
  r.render();
  r.update();
   
   
   
   
}

void mousePressed(){
  
 
  
}