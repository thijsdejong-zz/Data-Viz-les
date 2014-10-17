//1 Australia  6  Czech Republic  11 Germany  16 Israel      21 Mexico      26 Portugal        31 Switzerland    36 Brazil
//2 Austria    7  Denmark         12 Greece   17 Italy       22 Netherlands 27 Slovak Republic 32 Turkey         37 Russian Federation
//3 Belgium    8  Estonia         13 Hungary  18 Japan       23 New Zealand 28 Slovenia        33 United Kingdom
//4 Canada     9  Finland         14 Iceland  19 Korea       24 Norway      29 Spain           34 United States
//5 Chile      10 France          15 Ireland  20 Luxembourg  25 Poland      30 Sweden          35 OECD - Total



int Land = 22; //VUL HIER HET NUMMER VAN HET LAND WAARVAN JE DE FOOTPRINT WIL ZIEN IN.

Table table;
int datavelden = round(sqrt(25));
int gridResolutionX, gridResolutionY, tileSize;


void setup() {
  size(400,400);
  tileSize = width/datavelden;
  gridResolutionX = width/tileSize;
  gridResolutionY = height/tileSize;
  table = loadTable("data3.csv");
  colorMode(HSB,360,100,100);
}
 

void draw() {
  background(255);
  
  for (int gY=0; gY<= gridResolutionY-1; gY++) { 
    for (int gX=0; gX<= gridResolutionX-1; gX++) {
      float posX = tileSize*gX;
      float posY = tileSize*gY;
      int   rij  = gY*datavelden+gX;
      float data = table.getFloat(rij+1,Land-1);
       
       noStroke();
       fill(160,40,data*100);
       rect(posX,posY,tileSize,tileSize);
     }
    }
  }



