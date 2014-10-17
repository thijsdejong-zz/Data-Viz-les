void setup(){  
  size(600,600);
  background(0);
  noStroke();
  colorMode(HSB,360,100,100);

 }  
 void draw(){   

  float a = width*(0.75+randomGaussian()*0.07);        //rabdom(0,90,0.75);
  float b = width*(0.50+randomGaussian()*0.07);        //random(0.65,0.35);
  float c = width*(0.30+randomGaussian()*0.07);        //random(0.30,0.40);
  float A1 = -10;
  float A2 = 10;
//  float B1 = -0.5;
//  float B2 = 0.5;
  float C = random(0,360);
 
  fill(C,random(30,100),random(30,100));
  rect(0,0,width,height);
  
  fill(C,random(30,100),random(30,100));
  rotate(radians(randomGaussian()*0.5));
  rect((width/2)-(a/2)+randomGaussian(),(height/2)-(a/2)+randomGaussian(),a,a);
  
  fill(C,random(30,100),random(30,100));
  rotate(radians(randomGaussian()*0.5));
  rect((width/2)-(b/2)+randomGaussian(),(height/2)-(b/2)+randomGaussian(),b,b);
  
  if(round(random(1))==1){
  fill(C,random(30,100),random(30,100));
  rotate(radians(randomGaussian()*0.5));
  rect((width/2)-(c/2)+randomGaussian(),(height/2)-(c/2)+randomGaussian(),c,c);
  }
}

