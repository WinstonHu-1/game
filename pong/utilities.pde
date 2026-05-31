void circleTactile( int x, int y) {
  if (dist(x, y, mouseX, mouseY) <25) {
    stroke(0);
  } else {
    stroke(200);
  }
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(0);
  } else {
    stroke(255);
  }
}
