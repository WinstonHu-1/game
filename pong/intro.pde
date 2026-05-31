void intro() {
  background(85,165,78);
  fill(0);
  textSize(120);
  text("PONG", 250, 300);
  textSize(50);
  fill(255);
  tactile(100,550,170,70);
  rect(100,550, 170,70);
  fill(0);
  text("1 Player", 100,600);
  tactile(500,550,170,70);
  fill(255);
  rect(500, 550, 170,70);
  fill(0);
  text("2 Player", 500,600);
  theme.play();
}

void introClicks() {
  if (mouseX > 100 && mouseX < 270 && mouseY > 550 && mouseY < 620) {
    AI = true;
    mode = GAME;
  }
  if (mouseX > 500 && mouseX < 670 && mouseY > 550 && mouseY < 620) {
    AI = false;
    mode = GAME;
  }
}
