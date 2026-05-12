void gameover() {
  background(255,0,0);
  fill(255);
  text("HIGH SCORE:" + highScore, 400, 500);
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}
