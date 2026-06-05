void gameover() {
  if (leftscore> rightscore) {
    textSize(100);
    fill(255);
    
    text("Left Wins!", 200, 400);
    
  }else {
    textSize(100);
    fill(255);
    
    text("Right Wins!", 200, 400);
    
  }
}

void gameoverClicks(){
  mode = INTRO;
  leftscore = 0;
  rightscore = 0;
}
