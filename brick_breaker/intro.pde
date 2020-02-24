void intro() {

   background(0,255,200);

  text("Start Game", 400, 395 ); //text has to be in double quotes
  textSize(45);
  text("BRICK BREAKER", 200, 250);
}



void introClicks() {
    if (mouseX > 250  && mouseX < 550  && mouseY > 350 && mouseY < 450)
  mode = GAME;
  
  score = 0;
  lives = 3;

  

}
