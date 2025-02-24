void game() {
  background(grey);
   paddleMech();
 
 
 
}

void gameClicks() {
  if (mouseX > 300 && mouseX < 400 && mouseY > 25 && mouseY < 75 ) {
    mode = PAUSE;
  }
}
void paddleMech() {


paddle();
  //paddle movement
  if (akey == true) {
    px = px - 2;
  }
  if (dkey == true) {
    px = px + 2;
  }
}

void paddle(){

//drawing person
fill(tan);
circle(px, py, pd);
circle(px,py-50, 50);
//suit
fill(white);
rect(px,py + 30,70,40);

fill(black);
triangle(px ,py+20,px-30,py+75,px-55,py);
triangle(px ,py+20,px+30,py+75,px+55,py);

fill(red);

//eyes
fill(green);
circle(px-20,py-20,10);
circle(px+20,py-20,10);
fill(black);
rect(px-20,py-17,15,3);
rect(px+20,py-17,15,3);
}
