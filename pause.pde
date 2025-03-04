void pause () {
  fill(red);
  textSize(150);
  text("PAUSED", 400, 400);
  strokeWeight(4);
  tactileR(400-275/2, 400+275/2, 500-75/2, 500+75/2);
  textSize(50);
  //tactileR(162.5, 437.5, 425, 575);
  tactileR(300, 500, 575, 675);
  fill(red);
  rect(400, 625, 200, 100);
  fill(white);
  textSize(40);
  text("UNPAUSE", 400, 625);


  tactileR(262.5, 537.5, 462.5, 537.5);
  fill(red);
  rect(400, 500, 275, 75);
  fill(white);
  textSize(40);
  text("HOME", 400, 500);
}



void pauseClicks () {
  if (mouseX > 300 && mouseX < 500 && mouseY > 575 && mouseY <  675 ) {
    mode = GAME;
  }
  if (mouseX > 400-275/2 && mouseX < 400+275/2 && mouseY > 500-75/2 && mouseY < 500+75/2 ) {
    mode = INTRO;
  }
}
