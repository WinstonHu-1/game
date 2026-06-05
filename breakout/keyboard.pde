void keyPressed () {
  if (key == 'a' ||  key == 'A') akey = true;
  if (key == 'd' || key == 'D') dkey = true;
  if (keyCode == UP ) upkey = true;
  if (keyCode == DOWN) downkey = true;
}

void keyReleased() {
  if (key == 'a' ||  key == 'A') akey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (keyCode == UP ) upkey = false;
  if (keyCode == DOWN) downkey = false;
}
