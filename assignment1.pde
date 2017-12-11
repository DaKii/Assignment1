void setup() {
  fullScreen(SPAN);
  r = new Radar( (width / 4) / 2 ,  -(height / 4 ) / 2 ,100, .5,255);
  d = new DashBoard();
  w = new WelcomeScreen();
}

Radar r;
RadarDot rd;
DashBoard d;
WelcomeScreen w;

boolean click = false;
int radarAmount = 4;
int i;  
  
ArrayList<RadarDot> radarDots = new ArrayList<RadarDot>();  
  
void draw() {
  
  if(w.arcs.size() == 0){
    d.render();
    r.render();
    r.update();
  }
  else {
     w.render();
  }
}


void mouseClicked(){

  click = true;  
}