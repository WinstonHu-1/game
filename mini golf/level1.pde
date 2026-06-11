void level1() {
  background(37, 165, 27);
  fill(255);
  stroke(0);
  strokeWeight(15);
  if(Pred = true){
    stroke(red);
  } if (Pblue == true){
    stroke(blue);
    scored = false;
    ballX = 400;
    ballY = 650;

  }
  rect(200, 50, 400, 700);
  strokeWeight(15);
  stroke(0);
  rect(225, 75, 350, 650);
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



void level1Clicks() {
}
