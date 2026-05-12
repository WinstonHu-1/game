void game() {


  background (0, 255, 0);

  stroke(0);
  fill(255);
  circle(100, 100, 100);


  fill(255);
  circle(x, y, d);
  fill(255);
  stroke(0);
  strokeWeight(5);

  fill(0);
  textSize(30);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  text("Score:" + score, width/2, 50);
  text("Lives:" + lives, width/2, 100);




  //moving
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }

  if (y <d/2 || y > height-d/2) {
    vy = vy *-1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score +1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    success.rewind();
    success.play();
  } else if (dist(mouseX, mouseY, 100, 100)<50) {
    mode = PAUSE;
  } else {

    lives = lives-1;
    failure.rewind();
    failure.play();
    
    if( score> highScore) {
      highScore = score;
    }
    if (lives == 0){
      score = 0;
      lives = 3;
    }
  }
  
}
