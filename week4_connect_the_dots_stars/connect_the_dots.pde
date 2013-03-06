import geomerative.*;
import processing.pdf.*;
PImage img;
int pointcount = 1;

void setup() 
{
  //size(1280, 600);
  size(800,450, PDF, "constellate00.pdf");
  img = loadImage("darksky.jpg");
  image(img, 0, 0);
  smooth();
  fill(255);
  //stroke(255,0,0);

  translate(37, 200);

  int fontSize = 150;

  RG.init(this);

  RFont font = new RFont("FreeSans.ttf", fontSize, RFont.LEFT);

  RCommand.setSegmentLength(51);
  RGroup group = font.toGroup("constellate").toPolygonGroup();

  for (int k = 0; k < group.elements.length; k++)
  {
    RPolygon polygon = (RPolygon) group.elements[k];
    for (int i = 0; i < polygon.contours.length; i++)
    {
      RContour curContour = polygon.contours[i];
      for (int j = 0; j < curContour.points.length; j++)
      {   
          //for (int z = 1; z < curContour.points.length; z++)
         // {
          RPoint curPoint = curContour.points[j];
          //RPoint nextPoint = curContour.points[z];
          noStroke();
          ellipse(curPoint.x, curPoint.y, 5, 5);
          text(pointcount, curPoint.x + 2, curPoint.y - 5);
          pointcount = pointcount + 1;
          stroke(0);
          //line(curPoint.x, curPoint.y, nextPoint.x, nextPoint.y);
         // } 
      }
    }
  }
  println ("done");
}

