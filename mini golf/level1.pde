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
    println(dist(mouseX, mouseY, ballX, ballY));

  if (ballX < 250|| ballX > 550) {
    vx = vx * -0.8;
  }

  if (ballY <100 || ballY > 700) {
    vy = vy *-0.8;
  }
  



}

void level1Clicks() {
}
