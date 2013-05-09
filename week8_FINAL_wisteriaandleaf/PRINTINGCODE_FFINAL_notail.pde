import geomerative.*;
import processing.pdf.*;

boolean record;

float window_width = 5;
float window_height = 7;
float make_bigger = 73;

int cols = 25;
int rows = 27;
int gutterSize = 0;
int pageMargin = 0;

float sq_w = ((window_width*make_bigger)/cols);
float sq_h = ((window_height*make_bigger)/rows);

float alpha = 240;

Chevron chevron1;
Chevron2 chevron2;
CurtainRod curtainrod;

void setup()
{
  size(round(window_width * make_bigger), round(window_height * make_bigger));
  background(255);
  smooth();
  beginRecord(PDF, "final_+16.pdf");
  
  ModularGrid grid = new ModularGrid(cols, rows, gutterSize, pageMargin);

  // THIN BLACK LINES DIVIDING HORIZONTALLY INTO 6THS and VERTICALLY INTO 4THS
  strokeWeight(sq_h / 8);
  float ypos6 = height/6;
  float xpos4 = width/4;
  for (int i = 0; i < 5; i++){
    line(0, ypos6, width, ypos6);
    ypos6 = ypos6 + height/6;
  }
  for (int i = 0; i < 3; i++){
    line(xpos4, 0, xpos4, height);
    xpos4 = xpos4 + width/4;
  }
  fill(255, 0, 0);
  
  // - - - - - BLACK BORDER LINES
  // - - - - - VERTICAL LINES
  Module vLines = grid.modules[1][0];
  fill(0);
  //LEFT VERTICAL
  rect(vLines.x, vLines.y, vLines.w/4, vLines.h * rows + grid.gutterSize);
  //RIGHT VERTICAL
  rect((vLines.x + vLines.w * (cols-3)) + (vLines.w - vLines.w/4), 
        vLines.y, vLines.w/4, vLines.h * rows + grid.gutterSize);

  // - - - - - TOP HORIZONTAL LINES
  pushMatrix();
  Module hline1 = grid.modules[0][1];
  translate(hline1.x, hline1.y);
  rect(0, 0, hline1.w * cols, hline1.h / 4);

  popMatrix();

  // - - - - - BOTTOM HORIZONTAL LINES
  pushMatrix();
  Module hline2 = grid.modules[0][rows-2];
  translate(hline2.x, hline2.y);
  rect(0, hline1.h - hline1.h/4, hline1.w * cols, hline1.h / 4);
  popMatrix();

  // - - - - - BLACK RECTANGLES - - - - - 
  pushMatrix();
  Module rectline = grid.modules[2][1];
  translate(rectline.x, rectline.y);
  noFill();
  
  float r1_h = (rows - 2) * rectline.h;
  float r4_w = (cols - 4) * rectline.w;
  float r4_h = (r1_h / 6);
  
  float rx = 0;
  float ry = ((r1_h - (r4_h * 4)) / 5);
  float rx2 = r4_w;
  float ry2 = r4_h;
  
  float rSpace_h = ((r1_h - (r4_h * 4)) / 5);
  float grayboxheight = random(r4_h/2, r4_h - r4_h/6);
   
   // - - - - - GRAY BOX
   pushMatrix();
   Module original = grid.modules[0][0];
   translate(original.x, original.y);
   fill(145, 141, 142, alpha);
   rectMode(CENTER);
   //rect (-2*hline1.w, random(r4_h/2, r4_h) + hline1.h/2, width, random(r4_h));
   rect(width/2, ry2 / 2 + rSpace_h, width*2, grayboxheight); 
   
   popMatrix();
   
  noStroke();
  for (int i = 0; i < 4; i++){
    
    noFill();
    stroke(0);
    strokeWeight(hline1.h / 4);
    rectMode(CORNER);
    rect(rx, ry, rx2, ry2);
    ry = ry + r4_h + rSpace_h;
  }
  
  stroke(0);
  float y_origin = 0;
  for (int i = 0; i < 5; i++){
    stroke(0);
    translate(0, y_origin);
    curtainrod = new CurtainRod();
    curtainrod.display();
    y_origin = rSpace_h + r4_h - rSpace_h/22;
    
  }
  
  popMatrix();  
  
  pushMatrix();
  strokeWeight(1);
  //grid.display();
  //stroke(255, 0, 0, 100);
  stroke(255, 255, 255);
  //stroke(255, 255, 255);
  
  // - - - - - CHEVRON 1
  translate(rectline.x, rectline.y);
  float chev_w = random (50, sq_w * 10);
  chevron1 = new Chevron(random(rx + (chev_w), rx + (width - hline1.w * 2)/2) - chev_w/2, 
                          ry - rSpace_h * 4 - r4_h * 4, chev_w, r4_h);
  chevron1.display();
  
  // - - - - - CHEVRON 2
  float chev2_w = random (50, sq_w * 10);
  chevron2 = new Chevron2(random(rx + (width - hline1.w * 2)/2 + chev2_w/2, r4_w - chev2_w/2), 
                          ry - rSpace_h * 4 - r4_h * 4 + ((r4_h - grayboxheight)/2), chev2_w);
  chevron2.display();
  popMatrix();
  
  // SMALL RECTANGLE
  rectMode(CENTER);
  fill(171, 140, 77);
  //stroke(0);
  //stroke(255, 255, 255);
  stroke(114, 39, 10);
  strokeWeight(sq_h/3.4);
  rect(xpos4 - .25 * xpos4, height - rows - .04 * rSpace_h - rSpace_h / 4, 
       width / 15, rSpace_h);
}

void draw(){
  endRecord();
}
