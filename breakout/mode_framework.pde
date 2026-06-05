int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

float leftx, lefty, rightx, righty,leftd,rightd;
float ballx,bally,balld;
boolean akey,dkey, upkey, downkey ;
//float x,y,d;
float vx, vy;
int leftscore, rightscore, timer;
boolean AI;
Minim minim;
AudioPlayer theme, failure, success, gameover;

int [] x;
int [] y;
int n = 29;
int brickd = 50;
int tempx, tempy;

//y = new int [3];

void setup() {
  size(800, 800);
  x = new int [3];
  y = new int [3];
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
  
  vx = random(-10,10);
  vy = random(0,10);
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
    tempx = tempx +100;
    if (tempx == width){
      tempx = 100;
      tempy = tempy +100;
    }
   
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
