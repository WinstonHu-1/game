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

}
