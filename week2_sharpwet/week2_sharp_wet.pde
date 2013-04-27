import processing.pdf.*;

void setup(){  
  size(600, 800, PDF, "SHARPANDWET9.PDF");
  //size(600, 800);
  smooth();
  noFill(); 
  background(255);
}

void draw(){
  beginShape();
  for (int i = 0; i < 75; i++)
  {
    int x = round(random(width/2));
    int y = round(random(height/2));
    //triangle(random(x), random(y), random(x), random(y), random(x), random(y));
    vertex(x, y);
  }
  endShape();  

  fill(0);
  beginShape();
  for (int i=0; i<4; i++) {
    int x = round(random(width));
    if (x < width/2) {
      int y = round(random(400, height));
      curveVertex(x, y);
    }
else {
  int y = round(random(height));
  curveVertex(x, y);
  }
 }
endShape();
println("FINITO");
  exit();
}

