import processing.pdf.*;
import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;


void setup() {
  size (450, 650, PDF, "BADMOUTH16.PDF");
  //size(450,650);
  smooth();
  noStroke();
  colorMode(HSB, 1, 1, 1);

  TColor interiormouthColor = TColor.newHSV(.958, 1, .15);
  background(interiormouthColor.hue(), interiormouthColor.saturation(), interiormouthColor.brightness());

  FloatRange h = new FloatRange(.3, .6);
  FloatRange s = new FloatRange(.38, .4);
  FloatRange b = new FloatRange(.5, 1);
  ColorRange teethrange = new ColorRange(h, s, b, "teeth range");

//mouth's cavernous darkness
 for (int i = 0; i<25 ; i++) 
  {
    int fillcolor = 20*i;
    int ellipse_x = 200 + 20*i;
    int ellipse_y = 500 + 20*i;
    fill(0, 0, 0, 20);
    ellipse(82, 502, ellipse_x, ellipse_y);
  }

  //heart tongue
  noStroke();
  interiormouthColor.lighten(.8);
  fill(interiormouthColor.hue(), interiormouthColor.saturation(), interiormouthColor.brightness());
  //fill(198, 71, 2);
  beginShape();
  curveVertex(0, height);
  curveVertex(0, 419);
  curveVertex(45, 360);
  curveVertex(45, 360);
  curveVertex(100, 300);
  curveVertex(250, 800);
  curveVertex(250, 800);
  curveVertex(10, 550);
  curveVertex(30, 550);
  curveVertex(-10, 450);
  curveVertex(-10, 420);
  endShape();

  //mouth depth lines
  stroke(0, 0, 0);
  strokeWeight(5);
  int line_x = 150;
  int line_y = 150;
  int x_inc = 150;
  int y_inc = -200;
  int xspacing = 1;
  int yspacing = 30;
  for (int i = 0; i<50; i++) 
  {
    line(line_x, line_y, line_x + x_inc, line_y + 2*y_inc);
    line_x = line_x + xspacing; 
    line_y = line_y + yspacing;
  }

  int line_x2 = 150;
  int line_y2 = 150;
  int x_inc2 = 150;
  int y_inc2 = 200;
  int xspacing2 = 1;
  int yspacing2 = 30;
  for (int i = 0; i<50; i++) 
  {
    line(line_x2, line_y2, line_x2 + x_inc2, line_y2 + 2*y_inc2);
    line_x2 = line_x2 + xspacing2; 
    line_y2 = line_y2 + yspacing2;
  }

  /*
  fill(205, 243, 243);
   beginShape();
   for (int i = 0; i < 25; i++)
   {
   int x = round(random(60, 85));
   int y = round(random(150, 201));
   vertex(x, y);
   }
   endShape();
   
   noFill();
   beginShape();
   for (int i = 0; i < 25; i++)
   {
   int x = round(random(260, 485));
   int y = round(random(50, 201));
   vertex(x, y);
   }
   endShape();
   
   beginShape();
   for (int i = 0; i < 25; i++)
   {
   int x = round(random(160, 185));
   int y = round(random(350, 401));
   vertex(x, y);
   }
   endShape();*/

  /*
   for (int i=0; i<20; i++) {
   alpha(230);
   strokeWeight(random(1,2));
   int a = round(random(0, 150));
   int b = round(random(260, 420));
   int c = round(random(400, 500));
   int d = round(random(-40, 840));
   line(a, b, c, d);
   }*/

  stroke(0, 0, 1);
  fill(0,0,1);
  beginShape();
  vertex(50,0);
  bezierVertex(50,0, 101,137, 223,62) ;
  bezierVertex(194,151, 271,75, 302,31);
  bezierVertex(357,38, 382,8, 425,30);
  bezierVertex(425,30, 450,25,500,0);
  endShape();
  
  /*line(50, 0, 101, 137);
  line(101, 137, 168, 184);
  line(168, 184, 223, 62);
  line( 223, 62, 194, 151); 
  line(194, 151, 271, 75);
  line(271, 75, 302, 31); 
  line(302, 31, 357, 38);
  line(357, 38, 382, 8);
  line(382, 8, 425, 30);
  line( 425, 30, 500, 15);*/


  //t00th 1
  strokeWeight(4);
  beginShape();
  for (int i = 0; i < 5; i++)
  {
    TColor ranColor1 = teethrange.getColor();
    stroke(ranColor1.hue(), ranColor1.saturation(), ranColor1.brightness());
    //fill(ranColor1.hue(), ranColor1.saturation(), ranColor1.brightness());
    fill(0, 0, 1);
    int x = round(random(400, 500));
    int y = round(random(0, 20));
    vertex(x, y);
  }
  endShape();
  //t00th 2
  beginShape();
  for (int i = 0; i < 10; i++)
  {
    TColor ranColor2 = teethrange.getColor();
    stroke(ranColor2.hue(), ranColor2.saturation(), ranColor2.brightness());
    //fill(ranColor2.hue(), ranColor2.saturation(), ranColor2.brightness());
    fill(0, 0, 1);
    int x = round(random(290, 400));
    int y = round(random(0, 20));
    vertex(x, y);
  }
  endShape();
  //t00th 3
  beginShape();
  for (int i = 0; i < 15; i++)
  {
    TColor ranColor3 = teethrange.getColor();
    stroke(ranColor3.hue(), ranColor3.saturation(), ranColor3.brightness());
    //fill(ranColor3.hue(), ranColor3.saturation(), ranColor3.brightness());
    fill(0, 0, 1);
    int x = round(random(200, 270));
    int y = round(random(0, 90));
    vertex(x, y);
  }
  endShape();
  //t00th 4
  beginShape();
  for (int i = 0; i < 15; i++)
  {
    TColor ranColor4 = teethrange.getColor();
    stroke(ranColor4.hue(), ranColor4.saturation(), ranColor4.brightness());
    //fill(ranColor4.hue(), ranColor4.saturation(), ranColor4.brightness());
    fill(0, 0, 1);
    int x = round(random(90, 190));
    int y = round(random(0, 95));
    vertex(x, y);
  }
  endShape();
  
  fill(0, 0, 0, 100);
  noStroke();
  //strokeWeight(1);
  triangle(0, 0, 0, 200, 200, 0);
  triangle(0, 590, 0, 490, width, height);
  triangle(0, height, 0, 630, width, height);
  TColor ranColor5 = teethrange.getColor();
  stroke(ranColor5.hue(), ranColor5.saturation(), ranColor5.brightness());
  fill(ranColor5.hue(), ranColor5.saturation(), ranColor5.brightness());
  //upper lip
  triangle(0, 0, 0, 200, 100, 0);
  //lower lip
  triangle(0, height, 0, 590, width, height);
  //space behind
  triangle(width, 300, width, 490, 410, 400);
  
  //lightning
  /*TColor ranColor18 = teethrange.getColor();
  stroke(ranColor18.hue(), ranColor18.saturation(), ranColor18.brightness());
  strokeWeight(2);
  noFill();
  beginShape();
  vertex(117,425);
  vertex(199,372);
  vertex(299,445);
  vertex(358,370);
  endShape();
  
  TColor ranColor19 = teethrange.getColor();
  stroke(ranColor19.hue(), ranColor19.saturation(), ranColor19.brightness());
  beginShape();
  vertex(177,271);
  vertex(229,189);
  vertex(392,192);
  vertex(351,76);
  vertex(450,89);
  endShape();
  */
  //stars
  TColor ranColor12 = teethrange.getColor();
  stroke(ranColor12.hue(), ranColor12.saturation(), ranColor12.brightness());
  //fill(ranColor5.hue(), ranColor5.saturation(), ranColor5.brightness());
  noFill();
  strokeWeight(6);
  beginShape();
  vertex(155,142);
  vertex(111,231);
  vertex(194,148);
  vertex(96,163);
  vertex(184,207);
  vertex(147,115);
  endShape();
  
  TColor ranColor13 = teethrange.getColor();
  stroke(ranColor13.hue(), ranColor13.saturation(), ranColor13.brightness());
  interiormouthColor.lighten(.8);
  fill(interiormouthColor.hue(), interiormouthColor.saturation(), interiormouthColor.brightness());
  beginShape();
  vertex(194,221);
  vertex(205,267);
  vertex(215,232);
  vertex(175,245);
  vertex(210,258);
  vertex(201,240);
  endShape();

  strokeWeight(3);
  stroke(0,0,1);
  noFill();
  beginShape();
  for (int i=0; i<60; i++){
    int x = round(random(294,386));
    int y = round(random(310, 388));
    vertex(x,y);
  }
  endShape();

  TColor ranColor14 = teethrange.getColor();
  stroke(ranColor14.hue(), ranColor14.saturation(), ranColor14.brightness());
  //fill(0,0,1);
  strokeWeight(5);
  noFill();
  beginShape();
  vertex(336,294);
  vertex(285,400);
  vertex(407,350);
  vertex(274,304);
  vertex(373,412);
  vertex(335,266);
  endShape();
  
  TColor ranColor15 = teethrange.getColor();
  stroke(ranColor15.hue(), ranColor15.saturation(), ranColor15.brightness());
  fill(0,0,1);
  strokeWeight(5);
  beginShape();
  vertex(136,318);
  vertex(112,369);
  vertex(155,332);
  vertex(102,337);
  vertex(146,360);
  vertex(128,310);
  endShape();
  
  TColor ranColor16 = teethrange.getColor();
  stroke(ranColor16.hue(), ranColor16.saturation(), ranColor16.brightness());
  noFill();
  beginShape();
  vertex(450,100);
  vertex(302,194);
  vertex(450,188);
  endShape();
  
  TColor ranColor17 = teethrange.getColor();
  stroke(ranColor17.hue(), ranColor17.saturation(), ranColor17.brightness());
  beginShape();
  vertex(411,0);
  vertex(450,188);
  endShape();
  
  TColor ranColor20 = teethrange.getColor();
  stroke(ranColor20.hue(), ranColor20.saturation(), ranColor20.brightness());
  beginShape();
  strokeWeight(5);
  vertex(238,431);
  vertex(223,458);
  vertex(246,449);
  vertex(243,462);
  vertex(222,424);
  endShape();
  
  TColor ranColor21 = teethrange.getColor();
  stroke(ranColor21.hue(), ranColor21.saturation(), ranColor21.brightness());
  beginShape();
  strokeWeight(3);
  vertex(248,340);
  vertex(247,350);
  vertex(255,342);
  vertex(243,339);
  endShape();
  
  println("FINITO");
}
