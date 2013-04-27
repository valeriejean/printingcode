import processing.pdf.*;

void setup(){
  background(0);
  size(600,600, PDF, "ICECREAMCONE.PDF");
}

void draw(){
  fill(255);
  ellipse(216,420,233,233);
  rect(420,369,15,54);
  triangle(268,239,446,346,548,-32);
  println("FINITO");
  exit();
}

