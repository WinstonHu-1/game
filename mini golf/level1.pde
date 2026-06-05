void level1() {
  background(37, 165, 27);
  fill(255);
  stroke(0);
  strokeWeight(15);
  rect(200, 50, 400, 700);
  strokeWeight(15);
  rect(225, 75, 350, 650);
  golfBall();
if (mouseReleased == true && mousepressed == true) {
    shootBall();
    ballY = ballY - vy;
    ballX = ballX + vx;
    println(vx);
    println(vy);
    mouseReleased = false;
    mousepressed = false;
  }

  if (ballX+25 > 800 || ballX-25 <0) {
    vx = vx * -1;
  }

  if (ballY+25 > 800 || ballY-25 <0) {
    vy = vy * -1;
  }
}

void level1Clicks() {
}
