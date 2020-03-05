void intro() {

  background(0, 255, 200);

fill(255);
  text("Start Game", 400, 395 ); //text has to be in double quotes
  textSize(45);
  text("BRICK BREAKER", 200, 250);
  text("OPTIONS", 150, 450);
}



void introClicks() {
  if (mouseX > 400  && mouseX < 650  && mouseY > 350 && mouseY < 450)
    mode = GAME; 

if (mouseX > 150 && mouseX < 300 && mouseY > 400 && mouseY < 550)
    mode = OPTIONS;
  score = 0;
  lives = 3;
}
