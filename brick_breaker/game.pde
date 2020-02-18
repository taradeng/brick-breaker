

void game() {

  background(0,0,255);
  
  int i = 0;
  while (i< 100) {
    Brick b = myBricks.get(i);
    b.act();
    b.show();
    i++;
  }
  
  ball();
  paddle();
}


void gameClicks() {

  

}

void ball() {
  //sum of radii 60 *test stuff
  if (dist(bx, by, px, py) < 60) {
    bvx = (bx- px)/10;
    //bvx = bx - px*2 for super speed
    bvy=(by-py)/10;
    
  }
  ellipse(bx, by, 20, 20);

//move the ball code
bx = bx + bvx;
by = by + bvy;
if (bx < 0 || bx > width) {
  //bounce off left/right walls
  bvx = -bvx;
}
if (by < 0 || by > height) {
  //bounce off the top and bottom walls
  bvy = -bvy;
}
}

  


void paddle() {
  ellipse(px, py, 100, 100);
  if (rightKey) px = px + 5;
  if (leftKey) px = px -5;
 // if (px < 0 || px > width) { 
 //px = -px;
//}
  
}
