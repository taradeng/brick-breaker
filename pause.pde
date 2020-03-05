void pause() {
  background(255, 0, 0);
  fill(255);
  text("Pause", width/2, height/2);
  text("continue", 400, 400);
}


void pauseClicks() {
  if (mouseX > 350 && mouseX < 550 && mouseY > 350 && mouseY < 450) {
    mode=GAME;
}

}
