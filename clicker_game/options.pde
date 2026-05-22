void option() {
  background(220);
  strokeWeight(1);
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
  tactile(645,670,110,60);
  rect(645,670,110,60);
  fill(0);
  text("PLAY", 700, 700);
  
  stroke(0);
  strokeWeight(7);
  circle(100,600,10);
  line(100, 500, 100, 700);
  
  if (nathanOn == true) {
    image(nathan, 300,550,220,220);
  } else {
   
  }
  if (monkeyOn == true) {
     image( monkey, 311, 511, 200, 350); 
  }
  
}




void optionsClicks() {
  if (mouseX > 100 && mouseX<320 && mouseY > 200 && mouseY <420) {
     nathanOn = true;
     monkeyOn = false;
  }
    if (mouseX > 385 && mouseX<605 && mouseY > 200 && mouseY <420) {
     monkeyOn = true;
     
     nathanOn = false;
    }
  if ( mouseX >645 && mouseX < 755 && mouseY > 670 && mouseY <730 ) {
    mode = GAME;
  }
}
