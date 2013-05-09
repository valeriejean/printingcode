class Chevron {
  float chev_x, chev_y, chev_w, chev_h;
  float alpha = 140; 
  
  float sq_h = ((window_height*make_bigger)/rows);
  float sq_w = ((window_width*make_bigger)/cols);
  
  Chevron(float temp_chev_x, float temp_chev_y, 
          float temp_chev_w, float temp_chev_h){
    //top corner
    chev_x = temp_chev_x;
    chev_y = temp_chev_y;
    chev_w = temp_chev_w;
    chev_h = temp_chev_h;
  }

void display(){  
  float r1_h = (rows - 2) * sq_h;
  float r4_h = (r1_h / 6);
  float rSpace_h = ((r1_h - (r4_h * 4)) / 5);
  float r4_w = (cols - 4) * sq_w;
  
  pushMatrix();
  //fill(203, 135, 63, alpha);
  fill(171, 140, 77, alpha);
  strokeWeight(sq_h / 4);
  
  beginShape();
  vertex(chev_x, chev_y);
  vertex(chev_x - chev_w / 2, chev_y + 1.25 * sq_w);
  vertex(chev_x - chev_w / 2, chev_y + chev_h);
  vertex(chev_x, chev_y + .8 * chev_h);
  vertex(chev_x + chev_w / 2, chev_y + chev_h);
  vertex(chev_x + chev_w / 2, chev_y + 1.25 * sq_w);
  vertex(chev_x, chev_y);
  endShape();

  //TAILS
  //fill(255);

  fill(171, 140, 77, 250);
  rect ( chev_x - chev_w / 2, chev_y + chev_h, .4 * (chev_w / 2), rSpace_h);
  rect ( chev_x + .6 * chev_w / 2, chev_y + chev_h, 
         .4 * chev_w / 2, rSpace_h);  
         
  // long thin tails
  rectMode(CENTER);
  strokeWeight(sq_h / 8);
  float left_y = chev_y + chev_h + rSpace_h + .05 * chev_w;
  float left_y2 = chev_y + chev_h + rSpace_h + .05 * chev_w;
  for (int i = 0; i < random (10, 30); i++){
    fill(100, random(0, 100), random(100, 255));
    //left chain
    rect (chev_x - .8 * chev_w / 2, left_y, 
          .1 * chev_w,              .1 * chev_w);
    left_y = left_y + .1 * chev_w;
    for (int j = 0; j < 10; j++){
      fill(100, random(0, 100), random(100, 255));
      //right chain
      rect (chev_x + .8 * chev_w / 2, left_y2,
            .1 * chev_w,              .1 * chev_w);
      left_y2 = left_y2 + .1 * chev_w;
    }
  }
  
  fill(255, 255, 255, 100);
  for (int i = 1; i < 4; i++){
    beginShape();
    //strokeWeight(sq_h / 4);
    vertex(chev_x - chev_w / 2, chev_y + 1.25 * sq_w + i * chev_h / 5);
    vertex(chev_x, chev_y + i * chev_h / 5);
    vertex(chev_x + chev_w / 2, chev_y + 1.25 * sq_w + i * chev_h / 5);
    endShape();
  }
  
  beginShape();
  stroke(114, 39, 10);
  noFill();
  vertex(chev_x, chev_y);
  vertex(chev_x - chev_w / 2, chev_y + 1.25 * sq_w);
  vertex(chev_x - chev_w / 2, chev_y + chev_h);
  vertex(chev_x, chev_y + .8 * chev_h);
  vertex(chev_x + chev_w / 2, chev_y + chev_h);
  vertex(chev_x + chev_w / 2, chev_y + 1.25 * sq_w);
  vertex(chev_x, chev_y);
  endShape();
  
  //BLUE SQUARE GRID
  stroke(255, 255, 255, 100);
  rectMode(CORNER);
  strokeWeight(3);
  float tail_x = chev_x - .6 * (chev_w / 2);
  float tail_y = r4_h + rSpace_h + rSpace_h / 2;
  for (int i = 0; i < 8; i++){
    for(int j = 0; j < 6; j++){   
      fill(150, random(100, 200), random(100, 255));
      rect(tail_x, tail_y, chev_w * .6 / 6, rSpace_h / 2); 
      tail_x = tail_x + chev_w * .6 / 6;
    }
    tail_x = tail_x - chev_w * .6; 
    tail_y = tail_y + rSpace_h / 2;
}
  //midline
  //stroke(255,0,0);
  //line(0, (height - sq_h) / 2, width, (height - sq_h) / 2);
    
  //strokeWeight(sq_h / 6);
  //straight line down middle
  line(chev_x, chev_y, chev_x, chev_y + .8 * chev_h);
  
  popMatrix();
  }
}
