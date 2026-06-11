void circleTactile( int x, int y) {
  if (dist(x, y, mouseX, mouseY) <25) {
    stroke(0);
  } else {
    stroke(200);
  }
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(0);
  } else {
    stroke(255);
  }
}

void golfBall () {

  circle(ballX, ballY, 50);
  if (mouseReleased == true ) {
    print("true");
    ballX= ballX+vx;
    ballY = ballY-vy;
  }
}
void golfBallb () {

  circle(ballX, ballY, 50);
  if (mouseReleased == true ) {
    print("true");
    ballX= ballX+vx;
    ballY = ballY-vy;
  }
}
  void distanceX() {
    if (mouseX <400) {
      dx =dist(mouseX, 650, ballX, ballY);
    } else if ( mouseX > 400) {
      dx =dist(mouseX, 650, ballX, ballY)*-1;
    } else if ( mouseX == 0)
      dx = 0;
  }
  void distanceY() {
    if (mouseY <650) {
      dy =dist(400, mouseY, ballX, ballY)*-1;
    } else if ( mouseY > 650) {
      dy =dist(400, mouseY, ballX, ballY);
    } else if ( mouseY == 650)
      dy = 0;
  }
