void mouseReleased() {

  if (mode == INTRO) {

    introClicks();
  } else if (mode == OPTIONS) {
    
    optionsClicks();
    
  } else if (mode == WIN) {
    
    winClicks();
    
  } else if (mode == LOSE) {
    
    loseClicks();
  } else if (mode == GAME) {

    gameClicks();
  } else if (mode == GAMEOVER) {

    gameoverClicks();
  } else if (mode == PAUSE) {

    pauseClicks();
  } else {

    println("Mode error");
  }
}
