void setup() {
  fullScreen(SPAN);
  d = new DashBoard();
  w = new WelcomeScreen();
}

Radar r;
//RadarDot rd;
DashBoard d;
WelcomeScreen w;

boolean click = false;
int radarAmount = 4;
int i;  
  
//Update radar with moving blinking dots.
//ArrayList<RadarDot> radarDots = new ArrayList<RadarDot>();  
  
void draw() {
  
  if(w.arcs.size() == 0){
    d.render();
  }
  else {
     w.render();
  }
}


void mouseClicked(){

  click = true;  
}