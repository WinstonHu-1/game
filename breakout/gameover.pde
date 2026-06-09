void gameover() {
background(teal);

 if (score == 28) {
   textSize(120);
   text("YOU WIN!", 200, 500);
   score = 0;
 }else if (lives == 0){
  image(gif[f], 0, 0, width, height);
  f=f+1;
  if (f == frames) {
    f = 0;
  }
  }
  int i = 0;
    for ( i = 0; i <=n-1; i ++) {

    alive [i] = true;
    }
    

}

void gameoverClicks(){
  mode = INTRO;
    lives = 3;
    score = 0;
}
