

void pause(){ 
  theme.pause();
  text("PAUSE",400,400);
  text(highScore, 400, 500);
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100)<50) {
    mode = GAME;
  }
  
}
