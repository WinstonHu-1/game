void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == level1) {
    level1Clicks();
  } else if (mode == level2) {
    level2Clicks();
  } else if (mode == level3) {
    level3Clicks();
  } else if (mode == level4) {
    level4Clicks();
  } else if (mode == level5) {
    level5Clicks();
  }
  if (mousepressed == true) {
    mouseReleased = true;
  }
}
void mousePressed() {
  if (mouseX > ballX-25 && mouseX <ballX+25 && mouseY >ballY-25 && mouseY <ballY+25) {
    mousepressed = true;
    print("true");
  }
}

void mouseDragged() {
  if (dist(mouseX, mouseY, ballX, ballY) < 70) {
    line(ballX,ballY,mouseX,mouseY);
    vy = map(0, mouseY, ballY, -1, 1);
    vx = map(0, mouseX, ballX, -1, 1);
  }
}
