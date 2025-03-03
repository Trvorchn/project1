void transition() {
  if (count > 90) {
    mode = TRANSITIONMODE;
  } else {
    count = count + 1;
    noStroke();
    fill(black, 15);
    rect(400, 400, 800, 800);
    fill(white);
    text("EARN THAT RAISE!!!", 400, 400);
  }
  if (TRANSITIONMODE == GAMEMODE) {
    fill(red);
    textSize(200);
    text("PICK", 400, 400);
  } 
  
  if (TRANSITIONMODE==GAMEOVER) {
    fill(white);
    textSize(75);
    text("YOU'RE FIRED!!!", 400, 400);
    textSize(50);
   
  }
}
