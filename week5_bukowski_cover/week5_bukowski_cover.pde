import geomerative.*;
import processing.pdf.*;

float print_width = 6;
float print_height = 9;
float make_bigger = 80;

RShape title;
RShape author;
RShape title2;

void setup()
{
  //size(round(print_width * make_bigger), round(print_height * make_bigger), PDF, "women05.pdf");
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  setupShapes();
  smooth();
  
  int cols = 4;
  int rows = 4;
  float gutterSize =4;
  float pageMargin = 25;
  ModularGrid grid = new ModularGrid(cols, rows, gutterSize, pageMargin);
  //translate(130, 500);
  //rotate(180);
  //beginRecord(PDF, "women2.pdf");
  translate(370, 750);
  rotate(10);
  
  beginRecord(PDF, "women06.pdf");
  background(191,153,77);
  grid.display();
  noStroke();
  
  // PILLOW1
  pushMatrix();
  fill(255,255,255,120);
  Module zero = grid.modules[0][0];
  translate (zero.x, zero.y);
  rect(0, 0, zero.w*2 + gutterSize, .75*zero.h);
  fill(139, 118, 79);
  rect (0, .75*zero.h, zero.w*2 + gutterSize, 15);
  //line(0,0,(4*zero.w + 3*gutterSize),0);
  popMatrix(); 
  
  // PILLOW2
  pushMatrix();
  fill(255,255,255,120);
  Module zero2 = grid.modules[2][0];
  translate (zero2.x, zero2.y);
  rect(0, 0, zero2.w*2 + gutterSize, .75*zero2.h);
  fill(139, 118, 79);
  rect (0, .75*zero2.h, zero.w*2 + gutterSize, 15);
  popMatrix();
  
  // BIG W
  pushMatrix();
  fill(0);
  Module first = grid.modules[0][1];
  translate(first.x, first.y+20);
  title.scale(title.width / first.w);
  title.draw();
  popMatrix();

  // CHARLES BUKOWSKI
  pushMatrix();
  fill(0);
  stroke(2);
  Module second = grid.modules[0][0];
  translate(second.x, second.y);
  noStroke();
  author.scale(second.w/(.17*title.width));
  //rotate(1);
  author.draw();
  //line(0,0,(4*second.w + 3*gutterSize),0);
  popMatrix();
  
  //BOOK TITLE
  pushMatrix();
  fill(0);
  Module third = grid.modules[1][1];
  translate(third.x, third.y/2 + third.y);
  title2.scale(title2.width / (7*third.h) );
  noStroke();
  title2.draw();
  popMatrix();  

  // FRECKLES
  fill(0);
  for (int i = 0; i<=200; i++){
   ellipse(round(random(width)), round(random(height)), 4, 4); 
}

endRecord();

}

/*
	Some fun methods you can try to use in the RShape objects

	shape.draw(); // always draws in 0,0
	shape.translate(); // alternate translate just for this shape
	shape.scale(float); // scale the shape by a percentage
	shape.transform(x, y, width, height); // fit the shape inside a rectangle width this x,y,width,height
	shape.getX();
	shape.getY();
	shape.getWidth();
	shape.getHeight();
*/

void setupShapes()
{
  RG.init(this);
  RG.ignoreStyles(true);

  title = RG.loadShape("ai_women_corrected.svg");
  author = RG.loadShape("ai_charles_caps_corrected.svg");
  title2 = RG.loadShape("ai_women_corrected.svg");
}


