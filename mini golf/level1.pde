void level1() {
  background(37,165, 27);
  fill(255);
  stroke(0);
  strokeWeight(15);
  rect(200,50,400,700);
  strokeWeight(15);
  rect(225,75,350,650);
  golfBall();
  

}
void level1Clicks() {
}

void mousePressed() {
  if (mouseX > ballX && mouseX <ballX+25 && mouseY >ballY && mouseY <ballY+25){
    shootBall();
  }
  
}

void mouseDragged() {
   if (mouseX > ballX-25 && mouseY >ballY-25 ) {
    line( ballX, ballY, mouseX, mouseY);
  }
}
