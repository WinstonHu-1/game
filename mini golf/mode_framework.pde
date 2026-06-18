int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int level1 = 4;
final int level2 = 5;
final int level3 = 6;
final int level4 = 7;
final int level5 = 8;
color red = #FF0000;
color blue = #0000FF;
boolean Pred;
boolean Pblue;
boolean player1;
float ballX, ballY;
float vx,vy;
boolean mouseReleased = false;
boolean mousepressed = false;
int redscore, bluescore, timer;
float vxb,vyb;
boolean mouseReleasedb = false;
boolean mousepressedb = false;
float px, py;
float dx, dy;
boolean scored = false;

void setup() {
  pixelDensity(1);
  size(800, 800);
  mode = INTRO;
  ballX = 400;
  ballY = 650;
  vx =0;
  vy = 0;
  Pred = true;
  player1 = true;
  timer = 500;
  redscore = 0;
  bluescore = 0;

}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == level1) {
    level1();
  } else if (mode == level2) {
    level2();
  } else if (mode == level3) {
    level3();
  } else if (mode == level4) {
    level4();
  } else if (mode == level5) {
    level5();
  } 
  else {
    println("Error: Mode = " + mode);
  }
  
  

    
  

}
