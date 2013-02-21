import processing.pdf.*;
import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;


void setup() {
  size(450, 650, PDF, "COLORHILLS5.PDF");
  colorMode(HSB, 1, 1, 1, 1);
  strokeWeight(round(random(1,15)));

  //blue
  FloatRange h = new FloatRange(.5, .7);
  FloatRange s = new FloatRange(0, .25);
  FloatRange b = new FloatRange(.7, 1 );
  ColorRange range1 = new ColorRange(h, s, b, "blue range");
  
  //pink
  h = new FloatRange(.9, 1);
  s = new FloatRange(.2, .5);
  b = new FloatRange(.9, 1 );
  FloatRange a2 = new FloatRange(.5, 1 );
  ColorRange range2 = new ColorRange(h, s, b, a2, "pink range");
  
  // clouds
  TColor ranColor5 = range1.getColor();
  TColor ranColor12 = range2.getColor();
  stroke(ranColor12.hue(), ranColor12.saturation(), ranColor12.brightness());
  fill(ranColor5.hue(), ranColor5.saturation(), ranColor5.brightness());
  ellipse(0, 10, 1000, 500);

  TColor ranColor4 = range2.getColor();
  stroke(ranColor4.hue(), ranColor4.saturation(), ranColor4.brightness());
  fill(ranColor4.hue(), ranColor4.saturation(), ranColor4.brightness(), ranColor4.alpha());
  ellipse(20, 10, 700, 500);

  TColor ranColor3 = range1.getColor();
  stroke(ranColor3.hue(), ranColor3.saturation(), ranColor3.brightness());
  fill(ranColor3.hue(), ranColor3.saturation(), ranColor3.brightness());
  ellipse(0, 0, 700, 500);

  TColor ranColor2 = range1.getColor();
  stroke(ranColor2.hue(), ranColor2.saturation(), ranColor2.brightness());
  fill(ranColor2.hue(), ranColor2.saturation(), ranColor2.brightness());
  ellipse(0, 0, 700, 450);

  TColor ranColor1 = range1.getColor();
  stroke(ranColor1.hue(), ranColor1.saturation(), ranColor1.brightness());
  fill(ranColor1.hue(), ranColor1.saturation(), ranColor1.brightness());
  strokeWeight(random(.1, 3));
  ellipse(0, 0, 600, 450);

  //flip
  TColor ranColor6 = range2.getColor();
  stroke(ranColor1.hue(), ranColor1.saturation(), ranColor1.brightness());
  fill(ranColor6.hue(), ranColor6.saturation(), ranColor6.brightness(), ranColor6.alpha());
  ellipse(width, height-10, 1000, 500);

  TColor ranColor7 = range2.getColor();
  stroke(ranColor2.hue(), ranColor2.saturation(), ranColor2.brightness());
  fill(ranColor7.hue(), ranColor7.saturation(), ranColor7.brightness(), ranColor7.alpha());
  ellipse(width-20, height-10, 700, 500);

  TColor ranColor8 = range1.getColor();
  stroke(ranColor3.hue(), ranColor3.saturation(), ranColor3.brightness());
  fill(ranColor8.hue(), ranColor8.saturation(), ranColor8.brightness(), ranColor8.alpha());
  ellipse(width, height, 700, 500);

  TColor ranColor9 = range2.getColor();
  stroke(ranColor4.hue(), ranColor4.saturation(), ranColor4.brightness());
  fill(ranColor9.hue(), ranColor9.saturation(), ranColor9.brightness());
  ellipse(width, height, 400, 490);

  TColor ranColor10 = range2.getColor();
  stroke(ranColor5.hue(), ranColor5.saturation(), ranColor5.brightness());
  fill(ranColor10.hue(), ranColor10.saturation(), ranColor10.brightness());
  ellipse(0, height, 600, 350);
  
  TColor ranColor11 = range2.getColor();
  stroke(ranColor5.hue(), ranColor5.saturation(), ranColor5.brightness());
  fill(ranColor11.hue(), ranColor11.saturation(), ranColor11.brightness(), ranColor11.alpha());
  //alpha(ranColor11.alpha(100));
  ellipse(0, height+50, 770, 240);
  
  println("FINITO");
  exit();
}

