// void setup(){
//  size(500,500);
//  background(255);
// }

// void draw(){
//  ellipse(width/2, height/3, 100, 100);
//  ellipse(width/2+4, height/3, 90, 90);
//  ellipse(width/2+8, height/3, 75, 75);
//  ellipse(width/2+12, height/3, 55, 55);
//  ellipse(width/2+16, height/3, 30, 30);
//  ellipse(width/2+20, height/3, 5, 5);
// }

import processing.pdf.*;

void setup(){
  size(600,600, PDF, "filename.pdf");
  background(255);
}

void draw(){
  int j = 0;
  for (int i = 100; i > 5; i = i-10){
  j += 4;
  ellipse(width/2+j, height/3, i, i);
  }
  
  for (int k = 0; k < 95; k = k+5){
  triangle(260+k,225,350,225,305,400);
  }
  
   println("Finished.");
  exit();
  
}
