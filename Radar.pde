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
  float borderW = width / 4;
  float borderH = height /4;
  
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
    pushMatrix();
    translate(width - borderW, height / 2);
    int circleAmount = 6;
    float cInterval = (radius* 2) / circleAmount;
    stroke(255);
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
    float look = 125/trailLength;
    for(int i = 0 ; i < trailLength ; i ++)
    {
      stroke(125 + (i * look), 125 + (i * look), 125 + (i * look));
      float x = cx + sin(theta + i * speed) * radius;
      float y = cy -cos(theta + i * speed) * radius;
      line(cx, cy, x, y);
    }
     popMatrix();   

  }
}