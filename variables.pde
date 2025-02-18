
//mode framework
int mode;
final int INTRO   = 1;
final int GAME    = 2;
final int PAUSE   = 3;
final int GAMEOVER = 4;
final int TRANSITION = 5;
final int GAMEMODE = 6;

// color palette ===========================
color lime = #D1F2A5;
color red = #F56991;
color pink = #EED3D9;
color blue = #008DDA;
color turq = #97E7E1;
color gold = #FFC94A;
color yellow = #EFFAB4;

/// shades =================================
color white = #FFFFFF;
color black = #000000;
color grey  = #B5C0D0;



//transitions
int count;
int TRANSITIONMODE;
// fonts
PFont jerseyF;
//game mode player amount 
boolean AI;

//GIF
PImage[] moneyGif;
int currentPic = 0;
String leadingZeroes = "0";
