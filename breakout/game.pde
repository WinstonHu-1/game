import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void game() {

  background(63, 180, 53);
  fill(255);
  circle(leftx, lefty, leftd);

  circle(ballx, bally, balld);


  if (akey == true) leftx = leftx-10;
  if (dkey == true) leftx = leftx +10;




  timer = timer-1;


  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1;
  }

  if (bally <balld/2 || bally > height-balld/2) {
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

  if ( bally > 775) {
    bally = 775;
    vy = vy *-1;
  }


  int i = 0;

  for ( i = 0; i <n-1; i ++) {
    circle( x[i], y[i], brickd);
      if ( dist(ballx, bally, x[i], y[i]) <= balld/2+brickd/2) {
    vx = ((ballx-x[i])/10)*1.5;
    vy = ((bally-y[i])/10)*1.5;
  }
  }


}


void gameClicks() {
}
