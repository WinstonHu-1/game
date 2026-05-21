void option() {
  background(220);
  fill(0);
  textSize(100);
  text("Pick a character:", 400,50);
  fill(200);
  tactile(100,200,220,220);
  rect(100,200,220,220);
  image(nathan, 100,220, 220, 220);
  tactile(385,200,220,220);
  rect(385,200, 220, 220);
  image(monkey, 400,180, 200 ,350);
  textSize(50);
  fill(200);
  rect(650,670,110,60);
  fill(0);
  
  text("PLAY", 700, 700);
}




void optionsClicks() {
  mode = INTRO;
  
}
