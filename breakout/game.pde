import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


void game() {

  background(teal);
  fill(255);
  circle(leftx, lefty, leftd);

  circle(ballx, bally, balld);
  textSize(30);

  text("score:"+score, 100, 700);
  text("lives:"+lives, 700, 700);

  if (akey == true) leftx = leftx-10;
  if (dkey == true) leftx = leftx +10;




  timer = timer-1;


  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1;
  }

  if (bally <balld/2) {
    vy = vy *-1;
  }

  if ( dist(ballx, bally, leftx, lefty) <= balld/2+leftd/2) {
    vx = ((ballx-leftx)/10)*1.01;
    vy = ((bally-lefty)/10)*1.01;
  }


  if ( timer <0) {
    ballx = ballx +vx;
    bally = bally + vy;
  }
  if ( leftx < 50) {
    leftx = 50;
  }

  if ( leftx > 750) {
    leftx = 750;
  }
  if ( righty < 50) {
    righty = 50;
  }

  if ( righty > 750) {
    righty = 750;
  }

  if ( bally < 25) {
    bally = 25;
    vy = vy *-1;
  }

  //  if ( bally > 775) {
  //    bally = 775;
  //   vy = vy *-1;
  // }


  int i = 0;

  for ( i = 0; i <n-1; i ++) {
    if (alive[i] == true) {

      managebricks( i );
    }
  }

  if (bally > height-balld/2) {
    ballx=400;
    bally = 600;
    vx = random(-10, 10);
    vy = random(0, 10);
    timer = 100;
    lives--;
    failure.rewind();
    failure.play();
  }
  if (lives ==0) {
    mode = GAMEOVER;
  } else if (score == 28) {
    mode = GAMEOVER;
  }
}


void gameClicks() {
  mode = PAUSE;
}

void managebricks( int i) {
  if (y[i] == 100) fill(violet);
  if (y[i] == 200) fill(shadow);
  if (y[i] == 300) fill(charcoal);
  if (y[i] == 400) fill(olive);
  circle( x[i], y[i], brickd);
  if ( dist(ballx, bally, x[i], y[i]) <= balld/2+brickd/2) {
    vx = ((ballx-x[i])/10)*1.5;
    vy = ((bally-y[i])/10)*1.5;
    alive [i] = false;
    score++;
    success.rewind();
    success.play();
  }
}
