void intro() 
{

  noStroke();
  background(220);
  
  fill(200);
  rect(CENTER+400, CENTER+150, 700, 110);
  fill(0);
  textSize(128);
  text("Clicker Game", CENTER+400, CENTER+150);
  fill(200);
  rect(400, 340, 160, 80);
  fill(0);
  textSize(80);
  text("Start", CENTER+400, CENTER+340);
  fill(200);
  rect(400, 490, 290, 80);
  fill(0);
  text("Options", CENTER+390, CENTER+480);
  
  theme.play();
}

void introClicks() {
  if (mouseX > 400 && mouseX < 560 && mouseY > 340 && mouseY < 420) {
    println("nathan");
    mode = GAME;
  }
}
