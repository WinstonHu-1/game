void gameover() {
  if (leftscore> rightscore) {
    textSize(100);
    fill(255);
    
    text("Left Wins!", 200, 400);
    leftscore = 0;
  }else {
    textSize(100);
    fill(255);
    
    text("Right Wins!", 200, 400);
    rightscore = 0;
  }
}

void gameoverClicks(){
  mode = INTRO;
}
