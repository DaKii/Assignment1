void setup() {
  size(500, 500);
  r = new Radar(width / 2, height / 2 ,100, .5,255);
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
  
  if(radarDots.size() < radarAmount){
    for( i = 0; i < radarAmount; i++){  
      rd = new RadarDot(random(0,width), random((height / 2 - r.radius), (height - r.radius)),50, 20);
      radarDots.add(rd);
      rd.moveDot();
     }
  }
   
   
   
}

void mousePressed(){
  
 
  
}