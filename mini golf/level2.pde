void level2() {
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
  rect(375,250,50,350);
  fill(0);
  circle(400, 150, 50);
  fill(255);
  if (scored == false){
  golfBall();
  }

  if (ballX < 250|| ballX > 550) {
    vx = vx * -0.8;
  }

  if (ballY <100 || ballY > 700) {
    vy = vy *-0.8;
  }

  if (dist(ballX,ballY, 400, 150) <50){ 
    fill(0);
   text("score",400,400);
   Pred = false;
   Pblue = true;
   mouseReleased = false;
   mousepressed = false;
       vx = 0;
    vy = 0;
 
}
}
void level2Clicks() {
     mode = level2;
}
