void pause() {
  fill(0);
  textSize(100);
  text("PAUSE", 250, 400);
  theme.pause();
}

void pauseClicks() {
  mode = GAME;
  theme.play();
}
