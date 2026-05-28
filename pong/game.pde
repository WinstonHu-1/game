void game() {
  background(0);
  fill(255);
  strokeWeight(5);
  stroke(255);
  line(width/2,0,width/2, height);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  circle(ballx, bally, balld);
  
  
  if (wkey == true) lefty = lefty-10;
  if (skey == true) lefty = lefty +10;
  if (upkey == true) righty = righty -10;
  if (downkey == true) righty = righty+10;
  
 
  
  textSize(50);
  fill(255);
  text(leftscore, width/4, 100);
  fill(255);
  text(rightscore, 3*width/4, 100);
  
  
  
  
  timer = timer-1;
  
  if ((ballx-(balld/2))<0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    vx = random(-10,10);
    vy = random(-10,10);
    timer = 50;
  }
  if ((ballx+(balld/2))>800) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    vx = random(-10,10);
    vy = random(-5,5);
    timer = 50;
  }
  
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1;
  }

  if (bally <balld/2 || bally > height-balld/2) {
    vy = vy *-1;
  }
  
 if( dist(ballx,bally, leftx, lefty) <= balld/2+leftd/2) {
   vx = ((ballx-leftx)/10)*1.01;
   vy = ((bally-lefty)/10)*1.01;
 }
  if( dist(ballx,bally, rightx, righty) <= balld/2+leftd/2) {
   vx = ((ballx-rightx)/10)*1.01;
   vy = ((bally-righty)/10)*1.01;
 }
  
 if ( timer <0) {
   ballx = ballx +vx;
   bally = bally + vy;
 }
  if ( lefty < 50) {
    lefty = 50;
  }
  
  if ( lefty > 750) {
    lefty = 750;
  }
   if ( righty < 50) {
    righty = 50;
  }
  
  if ( righty > 750) {
    righty = 750;
  }
  
   if ( bally < 25) {
    bally = 25;
  }
  
  if ( bally > 775) {
    bally = 775;
  }
  
  
  
  
  
  
  
  
  
  
}


void gameClicks() {
  
}
