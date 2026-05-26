void game() {
  background(0);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  circle(ballx, bally, balld);
  
  if (wkey == true) lefty = lefty-10;
  if (skey == true) lefty = lefty +10;
  if (upkey == true) righty = righty -10;
  if (downkey == true) righty = righty+10;
  
  ballx = ballx +vx;
  bally = bally +vy;
  
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1;
  }

  if (bally <balld/2 || bally > height-balld/2) {
    vy = vy *-1;
  }
  
 if( dist(ballx,bally, leftx, lefty) <= balld/2+leftd/2) {
   vx = vx * -1;
   vy = vy *-1;
 }
  if( dist(ballx,bally, rightx, righty) <= balld/2+leftd/2) {
   vx = vx * -1;
   vy = vy *-1;
 }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}


void gameClicks() {
  
}
