void level2() {
  background(37, 165, 27);
  textSize(30);
  text("level 2", 100, 100);
    text("red = " + redscore, 100, 200);
  text("blue = " + bluescore, 90, 300);
  fill(255);
  stroke(0);
  strokeWeight(15);
  if (player1 == true) {
    stroke(red);
    print("red");
  }
  if (player1 == false) {
    stroke(blue);
    scored = false;
  }
  rect(200, 50, 400, 700);
  strokeWeight(15);
  stroke(0);
  rect(225, 75, 350, 650);
  fill(0);
  circle(400, 150, 50);
  fill(255);
  rect(375, 250, 50, 350);
  fill(0);
  circle(400, 150, 50);
  fill(255);
  if (scored == false) {
    golfBall();
  }

  if (ballX < 250|| ballX > 550) {
    vx = vx * -0.8;
  }

  if (ballY <100 || ballY > 700) {
    vy = vy *-0.8;
  }
  //  if (ballX <350  || ballX < 400 && ballY < 575  || ballY <  ) {
  //     vx = vx * -0.8;

  if ( ballX > 350 && ballY > 250 && ballY < 600 && ballX <355) {
    vx = vx * -0.8;
  }
    if ( ballX < 450 && ballY > 250 && ballY < 600 && ballX > 425) {
    vx = vx * -0.8;
  }
  if ( ballY < 350 && ballX > 375 && ballX < 425) {
   vy = vy * -0.8; 
  }
    if ( ballY < 625 && ballX > 375 && ballX < 425) {
   vy = vy * -0.8; 
  }






  if (dist(ballX, ballY, 400, 150) <50 && player1 == false ) {
    ballX = 400;
    ballY = 650;
    player1 = false;
    mouseReleased = false;
    mousepressed = false;
    vx = 0;
    vy = 0;
     player1 = true;
     timer = 500;
     mode = level3;
     bluescore++;
  }
  if (player1 == false && timer <0) {
    mode = level3;
     timer = 500;
      ballX = 400;
    ballY = 650;
  }


if (dist(ballX, ballY, 400, 150) <50) {
  fill(0);
  ballX = 400;
  ballY = 650;
  player1 = false;
  mouseReleased = false;
  mousepressed = false;
  vx = 0;
  vy = 0;
  timer = 500;
  redscore++;
}
if ( timer <0 && player1 == true) {
    ballX = 400;
    ballY = 650;
    player1 = false;
    mouseReleased = false;
    mousepressed = false;
    vx = 0;
    vy = 0;
    timer = 500;
}
}
void level2Clicks() {
  mode = level2;
}
