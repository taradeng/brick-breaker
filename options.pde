void options() {
  background(255, 0, 0);
  fill(255);
  text("SELECT SIZE", 250, 150);
  text("BALL", 150, 300);
  text("PADDLE", 400, 300);
  text("START GAME", 500, 570);

  //ball slider 
  stroke(255);
  strokeWeight(4);
  line(150, 400, 250, 400);

  fill(0);
  ellipse(slider, 400, slider-140, slider-140);

  //paddle slider
  stroke(255);
  strokeWeight(4);
  line(400, 400, 550, 400);

  fill (0);
  ellipse(slider2, 400, slider2-320, slider2-320);

  if (mousePressed) {

    if (dist(slider, 400, mouseX, mouseY) < 20) {
      slider = mouseX;

      if (slider < 150) slider = 150;
      if (slider > 250) slider = 250;
    }
  }


  if (dist(slider2, 400, mouseX, mouseY) < 40) {
    slider2 = mouseX;

    if (slider2 < 400) slider2 = 400;
    if (slider2 > 550) slider2 = 550;
  }
}


void optionsClicks() {
  if (mouseX > 600  && mouseX < 800  && mouseY > 500 && mouseY < 600) {
    mode = INTRO;
  }
}
