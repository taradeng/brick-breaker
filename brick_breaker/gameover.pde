
void gameover() {

  background(255,0,0);
   textSize(55);
  text("GAMEOVER! ", 400, 300);
 
  //restart
   fill(255);
  stroke(0);
  strokeWeight(3.3);
  rect(400, 420, 230, 50);
  textSize(40);
  
  fill(0);
    text("start over", 400, 416);

}



void gameoverClicks() {
  mode = INTRO;

  

}
