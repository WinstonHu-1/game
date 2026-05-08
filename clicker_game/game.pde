void game() {
  background (0,255,0);
  circle(x,y,d);
  fill(255);
  stroke(0);
  strokeWeight(5);
  
  x = x + vx;
  
  y = y + vy;
  
}

void gameClicks() {
  mode = GAMEOVER;
}
