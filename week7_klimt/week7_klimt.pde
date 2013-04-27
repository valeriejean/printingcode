import processing.pdf.*;
import toxi.util.datatypes.*;
boolean recording;
PImage img;
color b1, b2;

//red flowers
DressFlowers[] redflowers = new DressFlowers[20];
//purple flowers
DressFlowers[] purpflowers1 = new DressFlowers[30];
//blue flowers
DressFlowers[] blueflowers = new DressFlowers[15];
//first set of purple flowers
DressFlowers[] purpflowers2 = new DressFlowers[5];
//second set of purple flowers
DressFlowers[] purpflowers3 = new DressFlowers[3];

void setup() {
  smooth(100);
  size (1440, 954);
  //size (1440, 954, PDF, "Klimt10.pdf"); 
  background(95, 65, 26);

  img = loadImage("klimt5.png");
  b1 = color(0);
  b2 = color(152, 121, 67);

  noLoop();

  setGradient(0, 0, width/2, height, b1, b2);
  setGradient(width/2, 0, width/2, height, b2, b1);

  int specklecount = 5000;
  for (int i = 0; i < specklecount; i++) {
    float specklewh = random(1, 5);
    fill(217, 195, 73);
    stroke(217, 195, 73);
    ellipse(random(width), random(height), specklewh, specklewh);
  }

  int bigspecklecount = 500;
  for (int k = 0; k < bigspecklecount; k++) {
    float bigspecklewh = random(5, 8);
    fill(217, 195, 73);
    stroke(217, 195, 73);
    ellipse(random(width), random(height), bigspecklewh, bigspecklewh);
  }

  int goldrectcount = 240;
  for (int j = 0; j < goldrectcount; j++) {
    float goldrectwidth = random(20, 140);
    float goldrectheight = random(20, 140);
    noStroke();
    fill(233, 175, 75, 30);
    rect(random(width/2, width), random(height), goldrectwidth, goldrectheight);
  }

  //HALO
  fill(253, 223, 125);
  beginShape();
  curveVertex(847, 1100);
  curveVertex(1047, 954);
  curveVertex(1045, 400);
  curveVertex(1035, 182);
  curveVertex(845, 52);
  curveVertex(745, 0);
  curveVertex(450, 65);
  curveVertex(350, 350);
  curveVertex(580, 954);
  curveVertex(580, 1100);
  endShape();

  // HALO BACKGROUND
  int bullseyes = 240;
  int bullseyes2 = 100;
  for (int l = 0; l < bullseyes; l++) { 
    float bullx = random(920, 1070);
    float bully = random(121, 954);
    noFill();
    stroke(250, 189, 53);
    ellipse(bullx, bully, 15, 15);
    ellipse(bullx, bully, 30, 30);
    fill(180, 92, 40);
    ellipse(bullx, bully, 8, 8);
  }  
  for (int k = 0; k < bullseyes2; k++) { 
    float bullx = random(390, 810);
    float bully = random(10, 141);
    noFill();
    stroke(250, 189, 53);
    ellipse(bullx, bully, 15, 15);
    ellipse(bullx, bully, 30, 30);
    fill(180, 92, 40);
    ellipse(bullx, bully, 8, 8);
  }  

  // MAN'S COAT
  pushMatrix();
  rotate(radians(-10));

  WeightedRandomSet<Integer> ran = new WeightedRandomSet<Integer>();
  //gray
  ran.add(color(203, 193, 174), 2);
  //black
  ran.add(color(39, 34, 28), 2);
  //gold1
  ran.add(color(236, 203, 96), 3);
  //gold2
  ran.add(color(250, 209, 124), 3);

  noStroke();          
  int blackrectcount = 300;
  for (int j = 0; j < blackrectcount; j++) {
    float blackrectwidth = random(5, 30);
    float blackrectheight = random(45, 70);
    fill(ran.getRandom());
    rect(random(280, 700), random(180, height), blackrectwidth, blackrectheight);
  }

  fill(0);
  rect(430, 337, 75, 164);

  popMatrix();

  //GIRLS DRESS

  // dressy dress
  WeightedRandomSet<Integer> gold = new WeightedRandomSet<Integer>();
  gold.add(color(231, 174, 57), 2);
  gold.add(color(253, 223, 143), 2);
  gold.add(color(251, 204, 100), 3);
  gold.add(color(227, 194, 117), 3);

  int squares = 120;
  for (int r = 0; r < squares; r++) {
    float sq_x = random(660, 900);
    float sq_y = random(394, 960);
    float sq_wh = random(7, 47);
    fill (gold.getRandom());
    strokeWeight(random(0, 1.75));
    stroke(132, 95, 93);
    rect(sq_x, sq_y, sq_wh, sq_wh);
  }

  noStroke();
  fill(128, 182, 158);
  ellipse (767, 467, 105, 79);
  //red flower sleeve
  for (int m = 0; m < redflowers.length; m++) {
    redflowers[m] = new DressFlowers(color (222, 66, 8), color (226, 205, 175), random(720, 805), 
    random(433, 505), random(30, 34), random(15, 26));
    redflowers[m].display();
  }

  fill(131, 189, 151);
  ellipse (839, 632, 154, 120);
  //purple flower sleeve
  for (int n = 0; n < purpflowers1.length; n++) {
    purpflowers1[n] = new DressFlowers(color (177, 50, 155), color (105, 48, 81), random(769, 904), 
    random(574, 684), random(30, 34), random(15, 26));
    purpflowers1[n].display();
  }

  fill(131, 189, 151);
  ellipse (765, 789, 92, 75);
  //blue flower sleeve
  for (int o = 0; o < blueflowers.length; o++) {
    blueflowers[o] = new DressFlowers(color (3, 26, 113), color (224, 199, 162), random(715, 800), 
    random(760, 820), random(30, 34), random(15, 26)); 
    blueflowers[o].display();
  }

  fill(131, 189, 151);
  arc(922, 475, 70, 70, HALF_PI, PI * 1.5); 
  for (int o = 0; o < purpflowers2.length; o++) {
    purpflowers2[o] = new DressFlowers(color(155, 25, 94), color (213, 126, 56), random(890, 917), 
    random(450, 510), random(25, 30), random(15, 26));
    purpflowers2[o].display();
  }

  fill(131, 189, 151);
  arc(692, 655, 50, 65, -HALF_PI, HALF_PI); 
  for (int p = 0; p < purpflowers3.length; p++) {
    purpflowers3[p] = new DressFlowers(color (124, 26, 109), color (226, 183, 151), random(700, 710), 
    random(630, 670), random(20, 25), random(15, 26));
    purpflowers3[p].display();
  }

  if (recording) {
    saveFrame("screenshots/klimt##.png");
    println("saved");
    recording = !recording;
  }
  print("done");
  //exit();
}

class DressFlowers {
  color outsidecolor;
  color centercolor;
  float ellipsew, ellipseh, ellipsex, ellipsey;

  DressFlowers(color temp_outsidecolor, color temp_centercolor, float temp_ellipsex, 
  float temp_ellipsey, float temp_ellipsew, float temp_ellipseh) {
    outsidecolor = temp_outsidecolor;
    centercolor = temp_centercolor;
    ellipsex = temp_ellipsex;
    ellipsey = temp_ellipsey;
    ellipsew = temp_ellipsew;
    ellipseh = temp_ellipseh;
  }

  void display() {
    fill (outsidecolor);
    ellipse(ellipsex, ellipsey, ellipsew, ellipseh);    
    fill (centercolor);
    ellipse(ellipsex, ellipsey, ellipsew-13, ellipseh-11);
  }
}

void draw() {
  image(img, 0, 0);
}


void setGradient(int x, int y, float w, float h, color c1, color c2) {
  noFill();

  for (int i = x; i <= x+w; i++) {
    float inter = map(i, x, x+w, 0, 1);
    color c = lerpColor(c1, c2, inter);
    stroke(c);
    line(i, y, i, y+h);
  }
}

void keyPressed() {
  if (key=='a') {
    recording = !recording;
  }
}
