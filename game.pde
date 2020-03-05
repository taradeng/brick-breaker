void game() {

  background(0, 0, 255);

  score = 0;
  // no : score = score + 1;
  


  int i = 0;
  while (i< 33) {
    Brick b = myBricks.get(i);
    b.act();
    b.show();
    i++;
    

  }

  ball();
  paddle();
}


void gameClicks() {
  
    
 if (mouseX > 90 && mouseX < 200 && mouseY > 530 && mouseY < 600)
  mode=PAUSE;
  }


void ball() {
  //sum of radii 60 *test stuff
   stroke(0);
   strokeWeight(2);
  int c;
  if (dist(bx, by, px, py) < (slider-140)/2 + (slider2-120)/2) {
    bvx = (bx- px)/10;
    //bvx = bx - px*2 for super speed
    bvy=(by-py)/10;
  }
  c = #FFFFFF;
  fill(c);
  ellipse(bx, by, slider-140, slider-140);
    
  //move the ball code
  bx = bx + bvx;
  by = by + bvy;
  if (bx < 2 || bx > width) {
    //bounce off left/right walls
    bvx = -bvx;
  }
  if (by < 2|| by > height) {
    //bounce off the top and bottom walls
    bvy = -bvy;
  } 
  if (by > 600) {
    lives= lives-1;
  }
  
  //lives/score
    textSize(40);
    fill(0);
     text("score: " + score, 500, 570);
  text("lives: " + lives, 250, 570);
  text("PAUSE", 100, 570);
  

if (score==33) {
  mode=WIN;
}
if (lives==0) {
  mode=LOSE;
}
  
  
}




void paddle() {
  int c;
  c = #FFFFFF;
  fill(c);
  ellipse(px, py, slider2-120, slider2-120);
  if (rightKey) px = px + 5;
  if (leftKey) px = px -5;
  // if (px < 0 || px > width) { 
  //px = -px;
  //}
}
