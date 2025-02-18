
void setup() {
  size(800, 800);
  
    moneyGif = new PImage [121];
  int index = 0;
  while (index < 121) {
    moneyGif[index] = loadImage("img("+index+").gif");
  index++;  
} 

  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  mode = INTRO;
}
void draw() {

  
  
  
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode ==PAUSE) {
    pause();
  } else if (mode ==  GAMEOVER) {
    gameover();
  } else if (mode == TRANSITION) {
    transition();
  } else if (mode == GAMEMODE) {
    gamemode();
  } else {
    println("Mode error: " + mode);
  }
}
