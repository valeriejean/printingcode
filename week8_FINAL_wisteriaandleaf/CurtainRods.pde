class CurtainRod{
  float curtain_x, curtain_y;
  
  CurtainRod(){
  }
  
  void display(){
    
    float xpos4 = width;
    float sq_w = ((window_width*make_bigger)/cols);
    float sq_h = ((window_height*make_bigger)/rows);
    
    float r1_h = (rows - 2) * sq_h;
    float r4_w = (cols - 4) * sq_w;
    float r4_h = (r1_h / 6);
  
    float rSpace_h = ((r1_h - (r4_h * 4)) / 5);
    
    fill(0);
    strokeWeight(1);
    
    // line 1 end squares + line 1
    rect(-2*sq_w, rSpace_h / 2 - rSpace_h / 4,  sq_w, sq_h);
    rect(-2*sq_w + sq_w * (cols-1), rSpace_h / 2 - rSpace_h /4,  sq_w, sq_h);
    rect(-sq_w, rSpace_h / 2,  sq_w * (cols - 3), sq_h / 4);
    
    //corner squares + fine lines  
    strokeWeight(sq_h/10);
    //stroke(255,0,0);
    line(0, rSpace_h / 2.8, (xpos4 - (cols * 4))/4.2, rSpace_h / 2.8); 
    line(xpos4  - (xpos4 / 3), rSpace_h / 2.8, sq_w * (cols - 3), rSpace_h / 2.8); 
    line(0, rSpace_h / 3 + rSpace_h / 2, 
        (xpos4 - (cols * 4))/4.2, rSpace_h / 3 + rSpace_h / 2); 
    line(xpos4  - (xpos4 / 3), rSpace_h / 3 + rSpace_h/2, sq_w * (cols - 3), 
         rSpace_h / 3 + rSpace_h/2); 
  
    fill(203, 135, 63);
    stroke(0);
    strokeWeight(sq_h/4);
    rect(0, rSpace_h / 2, -sq_w, -sq_h);
    rect(sq_w * (cols-3), rSpace_h / 2, -sq_w, -sq_h); 
    rect(0, rSpace_h / 2, -sq_w, sq_h);
    rect(sq_w * (cols-3), rSpace_h / 2, -sq_w, sq_h); 
    }
}
