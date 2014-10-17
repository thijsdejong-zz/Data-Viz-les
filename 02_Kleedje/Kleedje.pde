// KLEUREN
// Paars    #907BB9
// Oranje   #E97900
// L.Blauw  #5EC4C6

// Rood    #E53518
// Blauw   #2E469E
// Groen   #5B9607

// L.Paars  #C6B6DB
// Beige    #F4CEA2
// L.Blauw  #BCD6D6


void setup(){
  size(800,600);
  background(255);
  noStroke();
  vertical();
  roodgb();
  horizontal();
  
}

void vertical(){
  for (int i = 0; i < width; i = i+120){
  fill(#907BB9);
  rect(25+i,0,10,height);
  fill(#E97900);
  rect(65+i,0,10,height);
  fill(#5EC4C6);
  rect(105+i,0,10,height);
  }
}

void roodgb(){
  for (int i = 0; i < width; i = i+120){
  fill(#E53518);
  rect(5+i,0,10,height);
  rect(0,5+i,width,10);
  fill(#2E469E);
  rect(45+i,0,10,height);
  rect(0,45+i,width,10);
  fill(#5B9607);
  rect(85+i,0,10,height);
  rect(0,85+i,width,10);
  }
}

void horizontal(){
  for (int i = 0; i < height; i = i+120){
  fill(#C6B6DB);
  rect(0,25+i,width,10);
  fill(#F4CEA2);
  rect(0,65+i,width,10);
  fill(#BCD6D6);
  rect(0,105+i,width,10);
  }
 
}
