class Radar
{
  
  int circles;
  float cx, cy;
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  int i;
  
  Radar(float cx, float cy, float radius, float frequency, color c)
  {
    this.cx = cx;
    this.cy = cy;
    this.radius = radius;
    this.frequency = frequency;
    this.speed = (TWO_PI / 60.0) * frequency;
    this.theta = 0;
    this.c = c;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  {
    
    int circleAmount = 6;
    float cInterval = (radius* 2) / circleAmount;
    stroke(0, 0, 255);
    noFill();
    for ( i = 0; i < circleAmount; i++) {
      if ( i == 0) {
        strokeWeight(5);
      }
      
      else {
        strokeWeight(1); 
      }
      ellipse(cx, cy, radius * 2 - (cInterval * i), radius * 2 - (cInterval * i)) ;
    }

    int trailLength = 10;
    float blueIntensity = 255 / (float)trailLength;
    for(int i = 0 ; i < trailLength ; i ++)
    {
      stroke(0, 0, i * blueIntensity);
      float x = cx + sin(theta + i * speed) * radius;
      float y = cy -cos(theta + i * speed) * radius;
      line(cx, cy, x, y);
    }
    
    
    
    
  }
}