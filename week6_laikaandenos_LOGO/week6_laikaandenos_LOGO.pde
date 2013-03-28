import geomerative.*;
import processing.pdf.*;
boolean recording;
PShape moon;

void setup()
{
  size(1000, 1000, PDF, "laikaandenos09.pdf");
  //size(1000, 1000);
  background(255);
  fill(165, 42, 5, 50);
  //fill(1,174,215,30);
  RG.init(this);
  //RG.ignoreStyles(true);
  moon = loadShape("Earths_Moon.svg");
  //shape(moon, 170, 500, 200, 200);
  shapeMode(CENTER);
  //shape(moon, 520, height/2+75, 300, 300);
  shape(moon, 520, 500, 500, 500);

  smooth();
  strokeWeight(3);
  stroke(0);
  int shapeSize = 650;
  noFill();
/*  //double orbits
  RShape orbit = RShape.createEllipse(520, height/2+75, shapeSize-420, shapeSize);
  //default rotation .8
  orbit.rotate(random(0, 1), 520, height/2+75);
  orbit.draw();
  RShape orbit2 = RShape.createEllipse(520, height/2+75, shapeSize-420, shapeSize);
  //default rotation 1.2
  orbit2.rotate(random(1.1, 1.4), 520, height/2+75);
  orbit2.draw(); */

  RShape halo = RShape.createEllipse(480, height/2+75, 700, 700);
  halo.draw();

  stroke(230);
  RFont font = new RFont("ITCEdscr.TTF", 300, RFont.LEFT);
  pushMatrix();
  translate(150, height/2);
  font.draw("Laika");
  popMatrix();

  pushMatrix();
  translate(160, height/2+210);
  font.draw("Enos");
  popMatrix();

  RFont font2 = new RFont("ITCEdscr.TTF", 70, RFont.LEFT);
  pushMatrix();
  //translate(400, height/2+70);
  translate(520, height/2+75);
  font2.draw("+");
  popMatrix();
  
  println("I'M DONE!");
  exit();
}

void draw(){
  if (recording) {
    saveFrame("screenshots/laikaandenos##.png");
    recording = !recording;
  }
}

void keyPressed() {
  if (key == 'x') {
    recording = !recording;
  }
}

