void level1() {
  background(37, 165, 27);
  textSize(30);
  text("level 1", 100,100);
  text("red = " + redscore, 100, 200);
  text("blue = " + bluescore, 90, 300);
  fill(255);
  stroke(0);
  strokeWeight(15);
  if (player1 == true) {
    stroke(red);
  }
  if (player1 == false) {
    stroke(blue);
    scored = false;

  }
  rect(200, 50, 400, 700);
  strokeWeight(15);
  stroke(0);
  rect(225, 75, 350, 650);
  fill(0);
  circle(400, 150, 50);
  fill(255);
  if (scored == false) {
    golfBall();
  }

  if (ballX < 250|| ballX > 550) {
    vx = vx * -0.8;
    vy = vy *0.8;
  }

  if (ballY <100 || ballY > 700) {
    vy = vy *-0.8;
    vx = vx * 0.8;
  }

  
   if (dist(ballX, ballY, 400, 150) <50 && player1 == false || timer <0) {
    
     print("set true");
         ballX = 400;
    ballY = 650;
    player1 = false;
    mouseReleased = false;
    mousepressed = false;
    vx = 0;
    vy = 0;
     player1 = true;
     mode = level2;
     timer = 500;
     bluescore ++;
   
 
 }
 if (player1 == false && timer <0) {
   mode = level2;
   bluescore ++;
   timer = 500;
    ballX = 400;
    ballY = 650;
 }

  if (dist(ballX, ballY, 400, 150) <50 && player1 == true) {
    fill(0);
    ballX = 400;
    ballY = 650;
    player1 = false;
    mouseReleased = false;
    mousepressed = false;
    vx = 0;
    vy = 0;
    timer = 500;
    redscore ++;
  }
if ( timer <0 && player1 == true) {
    ballX = 400;
    ballY = 650;
    player1 = false;
    mouseReleased = false;
    mousepressed = false;
    vx = 0;
    vy = 0;
    timer = 500;
    
    
  }
  print (timer);
}



void level1Clicks() {
}
