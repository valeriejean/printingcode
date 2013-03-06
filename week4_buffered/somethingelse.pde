import geomerative.*;
import processing.pdf.*;

void setup() 
{
  size(1280, 800, PDF, "BUFFERED04.pdf");
  //size(1280,800);
  background(255);
  smooth();
  noFill();
  strokeWeight(.5);
  stroke(130, 40, random(5,140), 40);

  //translate(300, 500);
  translate(175,500);
  int fontSize = 250;
  
  // initialize the geomerative library
  RG.init(this);
  
  RFont font = new RFont("georgia.ttf", fontSize, RFont.LEFT);
  RCommand.setSegmentLength(1);
  RGroup group = font.toGroup("buffered").toPolygonGroup();

  // now loop through the polygons in the group
  for(int k = 0; k < group.elements.length; k++)
  {
    RPolygon polygon = (RPolygon) group.elements[k];
    for(int i = 0; i < polygon.contours.length; i++)
    {
      // for each contour, let's loop through all the points
      RContour curContour = polygon.contours[i];
      for(int j = 0; j < curContour.points.length; j++)
      {
        RPoint curPoint = curContour.points[j];
        //if (j % 15 == 0) {
        //  line (curPoint.x, curPoint.y, random(width), random(-height, height));
        //} else {
        // now for each RPoint (which is a vector), make an ellipse
        //line(curPoint.x, curPoint.y, width/2, 150);
        //stroke(0,0,0,random(255));
        ellipse(curPoint.x, curPoint.y, 30, 30);
        //line(curPoint.x, curPoint.y, 200, 500);
        //}
      }
    }
  }
  println ("done!");
}
