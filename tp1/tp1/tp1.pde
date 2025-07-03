PImage mimage;
void setup(){
size(800,400);
mimage=loadImage("mordecai.png");

}

void draw(){
  background(0,0,0);
image(mimage,0,0,400,400);
strokeWeight(2);

//brazo de atras 
fill(111,170,240);
quad(577,112,570,106,541,242,580,242);

//cuerpo
strokeWeight(2);
fill(206,221,240);
bezier(591.0,113.0,545.0,95.0,562.0,276.0,599.0,248.0);
bezier(591.0,113.0,647.0,87.0,617.0,278.0,599.0,248.0);
line(586,133,586,159);

//cabeza
fill(206,221,240);
circle(600,76,85);
fill(111,170,240);

triangle(563,49,634,51,642,4);

triangle(635,53,659,54,653,30);
fill(10,21,33);
triangle(636,52,658,52,636,98);
fill(206,221,240);

 triangle(636,77,646,77,636,98);
 strokeWeight(1);
 //nariz
 fill(93,97,100);
quad(500,76,594,76,606,88,510,88);
fill(35,36,36);
ellipse(565,73,30,8);
line(507,82,582,82);

//ojos
fill(255,255,255);
circle(561,61,20);
circle(584,63,22);

//punto del ojo
fill(0,0,0);
circle(557,61,2);
circle(579,61,2);


//cola
fill(111,170,240);
ellipse(652,195,20,8);
ellipse(656,208,35,8);
ellipse(657,224,50,8);
fill(64,65,67);
rectMode(CORNERS);
rect(661,220,667,226);
rectMode(CORNER);
rectMode(CORNERS);
rect(655,204,660,211);
rectMode(CORNER);
rectMode(CORNERS);
rect(650,191,654,199);
rectMode(CORNER);



//brazos
strokeWeight(2);
fill(111,170,240);
quad(614,115,632,105,652,242,612,242);
strokeWeight(1);
fill(255,255,255);
rectMode(CORNERS);
rect(612,204,646,211);
rectMode(CORNER);
rectMode(CORNERS);
rect(612,219,650,228);
rectMode(CORNERS);
rect(549,204,568,211);
rectMode(CORNER);
rectMode(CORNERS);
rect(546,219,572,228);
rectMode(CORNER);



//dedos
fill(111,170,240);
triangle(541,241,549,242,542,258);
triangle(549,242,563,242,557,268);
triangle(563,242,574,242,569,262);
triangle(574,242,581,245,581,260);

triangle(623,242,632,242,626,264);
triangle(632,242,644,242,640,268);
triangle(644,242,652,242,650,260);

line(587,249,606,250);

//piernas 
fill(105,106,108);

//dedos
ellipse(562,360,60,4);
ellipse(562,355,60,3);

ellipse(585,374,60,4);
ellipse(584,368,60,3);


quad(585,248,592,248,592,362,585,362);
quad(607,248,615,241,615,374,607,374);


line(585,258,592,258);
line(585,268,592,268);
line(585,278,592,278);
line(585,290,592,290);
line(585,300,592,300);
line(585,310,592,310);
line(585,320,592,320);
line(585,330,592,330);
line(585,340,592,340);
line(585,350,592,350);
line(607,258,615,258);
line(607,268,615,268);
line(607,278,615,278);
line(607,290,615,290);
line(607,300,615,300);
line(607,310,615,310);
line(607,320,615,320);
line(607,330,615,330);
line(607,340,615,340);
line(607,350,615,350);
 line(607,360,615,360);


fill(111,170,240);
triangle(611,242,623,242,615,255);

 println("X: " + mouseX + " ~ Y: " + mouseY);
 fill(255,255,255);
 rectMode(CORNERS);
 rect(396,0,405,399);
 rectMode(CORNER);
  fill(255,255,255);
 
 
 
}
