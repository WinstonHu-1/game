void gameover() {
  background(85,165,78);
  if ( redscore > bluescore) {
    textSize(120);
    text("Red Wins!!", 300,400);
    
  }
else  if ( redscore < bluescore) {
    textSize(120);
    text("Blue Wins!!", 300,400);
    
  }
}
void gameoverClicks(){
  mode = INTRO;
  redscore = 0;
  bluescore = 0;
  
  
}
