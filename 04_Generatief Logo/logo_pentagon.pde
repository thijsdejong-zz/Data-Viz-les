void setup(){
  background(255);
  size(600,600);
  noStroke();
  colorMode(HSB,360,100,100);
  drawLogo();    
}


void drawLogo(){
  background(360);
  int rmin = 100;
  int rmax = 250;
  
  float mx = width/2;      //+random(-100,100);
  float my = height/2;     //+random(-100,100);
  
  float a  = random(rmin,rmax);
  float ax = mx;
  float ay = my-a;
  
  float b  = random(rmin,rmax);
  float bx = mx+b*cos(radians(18));
  float by = my-b*sin(radians(18));
  
  float c  = random(rmin,rmax);
  float cx = mx+c*sin(radians(36));
  float cy = my+c*cos(radians(36));
  
  float d  = random(rmin,rmax);
  float dx = mx-d*sin(radians(36));
  float dy = my+d*sin(radians(36));
  
  float e  = random(rmin,rmax);
  float ex = mx-e*cos(radians(18));
  float ey = my-e*sin(radians(18));
  
  float col = round(random(360));
  float cdf = 20;
  
  //A-B
  fill(col+1*cdf,random(50,100),random(50,100));
  beginShape();
  vertex(mx,my);
  vertex(ax,ay);
  vertex(bx,by);
  endShape(CLOSE);
  
  //B-C
  fill(col+2*cdf,random(50,100),random(50,100));
  beginShape();
  vertex(mx,my);
  vertex(bx,by);
  vertex(cx,cy);
  endShape(CLOSE);
  
  //C-D
  fill(col+3*cdf,random(50,100),random(50,100));
  beginShape();
  vertex(mx,my);
  vertex(cx,cy);
  vertex(dx,dy);
  endShape(CLOSE);
  
  //D-E
  fill(col+4*cdf,random(50,100),random(50,100));
  beginShape();
  vertex(mx,my);
  vertex(dx,dy);
  vertex(ex,ey);
  endShape(CLOSE);
  
  //E-A
  fill(col+5*cdf,random(50,100),random(50,100));
  beginShape();
  vertex(mx,my);
  vertex(ex,ey);
  vertex(ax,ay);
  endShape(CLOSE);
}
