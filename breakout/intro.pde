void intro() {
  background(teal);
  fill(0);
  textSize(120);
  text("Breakout", 180, 300);

  theme.play();
}

void introClicks() {
  mode = GAME;
}
