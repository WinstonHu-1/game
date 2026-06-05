void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }else if (mode == level1) {
    level1Clicks();
  }else if (mode == level2) {
    level2Clicks();
  }else if (mode == level3) {
    level3Clicks();
  }else if (mode == level4) {
    level4Clicks();
  }else if (mode == level5) {
    level5Clicks();
  }
  
  mouseReleased = true;


}
void mousePressed() {
  if (mouseX > ballX && mouseX <ballX+25 && mouseY >ballY && mouseY <ballY+25){
     mousepressed = true;
  }
  
}

void mouseDragged() {
//   if (mouseX > ballX-25 && mouseY >ballY-25 ) {
    line( ballX, ballY, mouseX, mouseY);
//   }
   shootBall();
  }
