void circleTactile( int x, int y) {
  if (dist(x, y, mouseX, mouseY) <25) {
    stroke(darkGreen);
  } else {
    stroke(softSilver);
  }
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(darkGreen);
  } else {
    fill(softSilver);
  }
}
