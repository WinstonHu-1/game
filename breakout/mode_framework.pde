int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

float leftx, lefty, rightx, righty, leftd, rightd;
float ballx, bally, balld;
boolean akey, dkey, upkey, downkey ;
//float x,y,d;
float vx, vy;
int leftscore, rightscore, timer;
int score;
boolean AI;
Minim minim;
AudioPlayer theme, failure, success, gameover;

int [] x;
int [] y;
boolean [] alive;
int n = 29;
int brickd = 50;
int tempx, tempy;
PImage [] gif;
int frames;
int f;
int lives;

color violet = #28112B;
color shadow = #453643;
color charcoal = #5E5D5C;
color olive = #788475;
color teal = #8DAA91;



//y = new int [3];

void setup() {
  size(800, 800);
  x = new int [3];
  y = new int [3];
  alive = new boolean [n];
  lives = 3;
  score = 0;
  pixelDensity(1);
  mode = INTRO;
  leftx = 0;
  lefty = height;
  leftd = 200;


  ballx = width/2;
  bally = 600;
  balld = 50;
  timer = 50;

  akey = dkey = upkey = downkey = false;

  vx = random(-10, 10);
  vy = random(0, 10);
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile ("FAILURE.wav");

  x = new int [n];
  y = new int [n];
  int i;
  tempx = 100;
  tempy = 100;

  for ( i = 0; i <=n-1; i ++) {
    x[i] = tempx;
    y[i] = tempy;
    alive [i] = true;
    tempx = tempx +100;
    if (tempx == width) {
      tempx = 100;
      tempy = tempy +100;
    }
  }
  frames = 34;
  gif = new PImage[frames];
  int k = 0;
  for ( k = 0; k<34; k ++) {
    gif[k] = loadImage("frame_" +k + "_delay-0.1s.gif");
  }
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
