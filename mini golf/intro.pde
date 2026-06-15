void intro() {
  background(85,165,78);
  noStroke();
  fill(150);
  rect(150,100,450,120,30);
  fill(0);
  textSize(120);
  text("Mini Golf", 150,200);
  fill(150);
  tactile(310,440,150,80);
  rect(310,440,150,80,5);
  fill(0);
  textSize(80);
  text("Play", 310,500);
}

void introClicks() {
  if (mouseX>310 && mouseX<460 && mouseY>440 && mouseY< 520){
    mode = level2;
  }
}
