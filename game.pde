void game() {

  background(grey);

  
  img = loadImage("office.jpg");
  img.resize(800, 800);
  image(img, 0, 0);

  paddleMech();
  money();
  boss();
  scoreboard();

  pauseBut();



if (moneyY > 800 && !moneyMissed) {
    lives= lives - 1;
    moneyMissed = true;  
}

if (moneyY > height + 50) {
    spawnMoney();
    moneyMissed = false;  
}


  if (lives <= 0){
  mode = GAMEOVER;
  }
  
  
  
  // Check for catching money
  if (moneyY > py - playerSize +150 && moneyX > px - playerSize +150 &&  moneyX < px + playerSize -150) {
    score++;
    spawnMoney();
  }
  if (moneyY > height + 50) {
    spawnMoney();
  }
}






void gameClicks() {
  if (mouseX > 12.5 && mouseX < 87.5 && mouseY > 382.5 && mouseY < 417.5 ) {
    mode = PAUSE;
  }
}
void pauseBut(){
  tactileR(12.5,87.5,382.5,417.5);
  fill(white);
  rect(50,400,75,35);
  fill(black);
  textSize(20);
  text("PAUSE",50,400);
  noStroke();
  
  
  
}




void paddleMech() {


  paddle();
  //paddle movement
  if (akey == true) {
    px = px - playerSpeed;
  }
  if (dkey == true) {
    px = px + playerSpeed;
  }
  
    px = constrain(px, playerSize /4, width - playerSize / 4);
}




void paddle() {
  character();
}








void character() {
  //drawing person
  fill(tan);
  circle(px, py, pd);
  circle(px, py-50, 50);
  //suit
  fill(white);
  rect(px, py + 30, 70, 40);

  fill(black);
  triangle(px, py+20, px-30, py+75, px-55, py);
  triangle(px, py+20, px+30, py+75, px+55, py);

  fill(red);
  triangle(px, py+20, px+10, py+10, px-10, py+10);
  triangle(px, py+20, px+10, py+50, px-10, py+50);
  //eyes
  fill(green);
  circle(px-20, py-20, 10);
  circle(px+20, py-20, 10);
  fill(black);
  rect(px-20, py-17, 15, 3);
  rect(px+20, py-17, 15, 3);
}

void money() {

  fill(green);
  ellipse(moneyX, moneyY, moneySize, moneySize);
  fill(black);
  text("$", moneyX, moneyY, 50);

  moneyY += moneySpeed;
}



void spawnMoney() {
  moneyX = random(moneySize / 2, width - moneySize / 2);
  moneyY = 0;
}







void boss() {
  //drawing person
  fill(tan);
  circle(moneyX, 0+50, pd);
  circle(moneyX, 100, 50);
  //eyes
  fill(green);
  circle(moneyX-20, 75, 10);
  circle(moneyX+20, 75, 10);
  fill(black);
  rect(moneyX-20, 60, 15, 3);
  rect(moneyX+20, 60, 15, 3);
  //suit
  fill(white);
  rect(moneyX, 20, 80, 60);
  fill(red);
  triangle(moneyX, 40, moneyX+10, 0, moneyX-10, 0);
  triangle(moneyX, 40, moneyX+10, 50, moneyX-10, 50);
  fill(black);
  triangle(moneyX, 40, moneyX-55, 65, moneyX-38, -5);
  triangle(moneyX, 40, moneyX+55, 65, moneyX+38, -5);
}







void scoreboard(){
  // Display score
  fill(255);
  textSize(20);
  text("Score:" + score, 40, 30);
  text("Lives:" + lives, 100, 750);
  text("Highscore:" + highscore, 730, 30);

  // highscore
  if (score > highscore) {
    highscore = score;
  }

}
