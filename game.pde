void game() {
  background(white);

}

void gameClicks() {
  if (mouseX > 300 && mouseX < 400 && mouseY > 25 && mouseY < 75 ) {
    mode = PAUSE;
  }
}
