void level3() {
    background(37, 165, 27);
  textSize(30);
  text("level 3", 100, 100);
  fill(255);
  stroke(0);
  strokeWeight(15);
  if (player1 == true) {
    stroke(red);
  }
  if (player1 == false) {
    stroke(blue);
    scored = false;
  }
  fill(255);
  
  strokeWeight(15);
  rect(200, 50, 400, 700);
  strokeWeight(15);
  stroke(0);
  rect(225, 75, 350, 650);
  fill(0);
  circle(400, 150, 50);
  noFill();
  strokeWeight(10);
  triangle(325,450, 395, 520, 395, 380);
  triangle(475,450, 405, 520, 405, 380);
   if (scored == false) {
    golfBall();
  }

  if (ballX < 250|| ballX > 550) {
    vx = vx * -0.8;
  }

  if (ballY <100 || ballY > 700) {
    vy = vy *-0.8;
  }






  if (dist(ballX, ballY, 400, 150) <50 && player1 == false) {
    mode = level4;
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
  
}
  redwin();
  bluewin();
  
  }

  
  
void level3Clicks() {
}
