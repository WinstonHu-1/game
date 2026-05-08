void intro() {
  noStroke();
  background(220);
  fill(200);
  rect(50, 100, 700, 110);
  fill(0);
  textSize(128);
  text("Clicker Game", 50, 200);
  fill(200);
  rect(300, 340, 160, 70);
  fill(0);
  textSize(80);
  text("Start", 300, 400);
  fill(200);
  rect(230, 490, 300, 80);
  fill(0);
  text("Options", 250, 550);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 460 && mouseY > 340 && mouseY < 410) {

    mode = GAME;
  }
}
