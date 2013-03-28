import geomerative.*;
import processing.pdf.*;
boolean recording;
PShape moon;

void setup()
{
  size(1000, 800, PDF, "laikaandenos_halo05.pdf");
  //size(1000, 1000);
  background(255);
  fill(165, 42, 5, 50);
  //fill(1,174,215,30);
  RG.init(this);
  //RG.ignoreStyles(true);
  moon = loadShape("Earths_Moon.svg");

  smooth();
  strokeWeight(3);
  stroke(240);
  int shapeSize = 650;
  noFill();
  /*RShape orbit = RShape.createEllipse(520, height/2+75, shapeSize-420, shapeSize);
   orbit.rotate(.8, 520, height/2+75);
   orbit.draw();
   RShape orbit2 = RShape.createEllipse(520, height/2+75, shapeSize-420, shapeSize);
   orbit2.rotate(1.2, 520, height/2+75);
   orbit2.draw();
   */

  RShape halo = RShape.createEllipse(500, height/2, 760, 760);
  halo.draw();
  RPoint onLine = halo.getPoint(random(.01,.99));
  shapeMode(CENTER);
    //default ---- shape(moon, 120, 450, 95, 100);
    shape(moon, onLine.x, onLine.y, 95, 100);

  /*RCommand.setSegmentLength(1);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  RPolygon haloPolygon = halo.toPolygon(); 
  //for ( int i = 0; i < haloPolygon.contours[0].points.length; i++) {
    RPoint moonPoint = haloPolygon.contours[0].points;
    //ellipse(curPoint.x, curPoint.y, 5, 5);
    //shape(moon, 170, 500, 200, 200);
    shapeMode(CENTER);
    //default ---- shape(moon, 120, 450, 95, 100);
    shape(moon, moonPoint.x, moonPoint.y, 95, 100);
  //}*/

  stroke(200);
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

void draw() {
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

