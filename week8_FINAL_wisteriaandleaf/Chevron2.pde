class Chevron2 {
  float chev2_x, chev2_y, chev2_w, chev2_h;
  float alpha = 240; 
  float sq_h2 = ((window_height*make_bigger)/rows);
  float sq_w2 = ((window_width*make_bigger)/cols);
  
  Chevron2(float temp_chev2_x, float temp_chev2_y, float temp_chev2_w){
    //top corner
    chev2_x = temp_chev2_x;
    chev2_y = temp_chev2_y;
    chev2_w = temp_chev2_w;
  }

void display(){  
  pushMatrix();
  float r1_h = (rows - 2) * sq_h;
  float r4_h = (r1_h / 6);
  float rSpace_h = ((r1_h - (r4_h * 4)) / 5);
  
  int randomizer = int(random(1,4));
  chev2_h = randomizer*(r4_h + rSpace_h);
  strokeWeight(sq_h / 4);
  fill(203, 135, 63, alpha);
  float add_y = chev2_h/4;
  
  beginShape();
  vertex(chev2_x, chev2_y);
  vertex(chev2_x - chev2_w / 2, chev2_y + 1.25 * sq_w);
  vertex(chev2_x - chev2_w / 2, chev2_y + chev2_h);
  vertex(chev2_x, chev2_y + .8 * chev2_h);
  vertex(chev2_x + chev2_w / 2, chev2_y + chev2_h);
  vertex(chev2_x + chev2_w / 2, chev2_y + 1.25 * sq_w);
  vertex(chev2_x, chev2_y);
  endShape();

  float times = (.8 * chev2_h) / (r4_h / 5);
  stroke(114, 39, 10);
  for (int i = 1; i < times - 1; i++){
    beginShape();
    //strokeWeight(sq_h / 3);
    vertex(chev2_x - chev2_w / 2, chev2_y + 1.25 * sq_w + i * r4_h / 5);
    vertex(chev2_x, chev2_y + i * r4_h / 5);
    vertex(chev2_x + chev2_w / 2, chev2_y + 1.25 * sq_w + i * r4_h / 5);
    endShape();
  }
  
  beginShape();
  noFill();
  vertex(chev2_x, chev2_y);
  vertex(chev2_x - chev2_w / 2, chev2_y + 1.25 * sq_w);
  vertex(chev2_x - chev2_w / 2, chev2_y + chev2_h);
  vertex(chev2_x, chev2_y + .8 * chev2_h);
  vertex(chev2_x + chev2_w / 2, chev2_y + chev2_h);
  vertex(chev2_x + chev2_w / 2, chev2_y + 1.25 * sq_w);
  vertex(chev2_x, chev2_y);
  endShape();
  
  strokeWeight(sq_h / 6);
  line(chev2_x, chev2_y, chev2_x, chev2_y + .8 * chev2_h);
  
  popMatrix();
  }
}
