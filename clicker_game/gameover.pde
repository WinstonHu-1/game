void gameover() {
  background(255,0,0);
  fill(255);
  
  textSize(120);
  text("GAMEOVER", CENTER, 200);
  
  textSize(20);
  text("HIGH SCORE:" + highScore, CENTER, 500);
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}
