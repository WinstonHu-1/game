void level1() {
  background(37, 165, 27);
  fill(255);
  stroke(0);
  strokeWeight(15);
  rect(200, 50, 400, 700);
  strokeWeight(15);
  rect(225, 75, 350, 650);
  fill(0);
  circle(400, 150, 50);
  fill(255);
  golfBall();


  if (ballX < 25 || ballX > width-25) {
    vx = vx * -1;
  }

  if (ballY <25 || ballY > height-25) {
    vy = vy *-1;
  }
  



}

void level1Clicks() {
}
