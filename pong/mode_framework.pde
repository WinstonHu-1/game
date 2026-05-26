int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

float leftx, lefty, rightx, righty,leftd,rightd;
float ballx,bally,balld;
boolean wkey,skey, upkey, downkey ;
float x,y,d;
float vx, vy;

void setup() {
  size(800, 800);
  mode = INTRO;
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  wkey = skey = upkey = downkey = false;
  
  vx = random(-10,10);
  vy = random(-10,10);
  
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
  } else {
    println("Error: Mode = " + mode);
  }
}
