int dx = 0, dy = 0, x, y, startUpCounter = 0, dotCount = 0, wonDB = 0;
boolean startUp = false, won = false, winFreeze = false;
PACMAN pac = new PACMAN(3, 200, 305);
GHOST ghost1 = new GHOST(50, 50);
GHOST ghost2 = new GHOST(50, 50);
GHOST ghost3 = new GHOST(50, 50);
GHOST ghost4 = new GHOST(50, 50);
GHOST[] ghosts = new GHOST[]{ghost1, ghost2, ghost3, ghost4};
//building the PACDOTS.
PacDot PD1 = new PacDot("PACDOT", 175, 305);
PacDot PD2 = new PacDot("PACDOT", 145, 305);
PacDot PD3 = new PacDot("PACDOT", 115, 305);
PacDot PD4 = new PacDot("PACDOT", 200, 305);
PacDot PD5 = new PacDot("PACDOT", 230, 305);
PacDot PD6 = new PacDot("PACDOT", 260, 305);
PacDot CHEAT = new PacDot("CHEAT", 0, 0);
PacDot PP1 = new PacDot("POWERPELLET", 200, 365);
PacDot[] dots = new PacDot[]{PD1, PD2, PD3, PD4, PD5, PD6};
PacDot[] powers = new PacDot[]{PP1};
//test
void draw(){
  if (!winFreeze){
    background(0, 0, 0);
    stroke(75, 0, 130);
    strokeWeight(3);
    //building the maze!
    line(width/2 - 40, height/2 - 30, width/2 - 40, height/2 + 30);
    line(width/2 + 40, height/2 - 30, width/2 + 40, height/2 + 30);
    line(width/2 + 40, height/2 + 30, width/2 - 40, height/2 + 30);
    line(width/2 + 40, height/2 - 30, width/2 + 15, height/2 - 30);
    line(width/2 - 40, height/2 - 30, width/2 - 15, height/2 - 30);
    line(width/2 + 40, height/2 + 60, width/2 - 40, height/2 + 60);
    line(width/2 - 15, height/2 - 30, width/2 + 15, height/2 - 30);
    line(width/2, height/2 + 60, width/2, height/2 + 90);
    line(width/2 + 40, height/2 + 120, width/2 - 40, height/2 + 120);
    line(width/2, height/2 + 120, width/2, height/2 + 150);
    line(width/2 + 40, height/2 - 90, width/2 - 40, height/2 - 90);
    line(width/2, height/2 - 90, width/2, height/2 - 60);
    line(width/2 - 70, height/2 - 90, width/2 - 70, height/2 - 25);
    line(width/2 - 70, height/2 - 60, width/2 - 30, height/2 - 60);
    line(width/2 + 70, height/2 - 90, width/2 + 70, height/2 - 25);
    line(width/2 + 70, height/2 - 60, width/2 + 30, height/2 - 60);
    line(width/2 + 70, height/2 + 10, width/2 + 70, height/2 + 60);
    line(width/2 - 70, height/2 + 10, width/2 - 70, height/2 + 60);
    line(width/2 - 70, height/2 + 90, width/2 - 30, height/2 + 90);
    line(width/2 + 70, height/2 + 90, width/2 + 30, height/2 + 90);
    line(width/2 + 100, height/2 + 90, width/2 + 130, height/2 + 90);
    line(width/2 + 100, height/2 + 90, width/2 + 100, height/2 + 120);
    line(width/2 - 100, height/2 + 90, width/2 - 130, height/2 + 90);
    line(width/2 - 100, height/2 + 90, width/2 - 100, height/2 + 120);
    line(width/2 - 70, height/2 + 120, width/2 - 70, height/2 + 150);
    line(width/2 - 40, height/2 + 150, width/2 - 130, height/2 + 150);
    line(width/2 + 70, height/2 + 120, width/2 + 70, height/2 + 150);
    line(width/2 + 40, height/2 + 150, width/2 + 130, height/2 + 150);
    line(width/2, height/2 - 120, width/2, height/2 - 170);
    line(width/2 - 30, height/2 - 120, width/2 - 70, height/2 - 120);
    line(width/2 - 70, height/2 - 120, width/2 - 70, height/2 - 140);
    line(width/2 - 30, height/2 - 120, width/2 - 30, height/2 - 140);
    line(width/2 - 30, height/2 - 140, width/2 - 70, height/2 - 140);
    line(width/2 + 30, height/2 - 120, width/2 + 70, height/2 - 120);
    line(width/2 + 70, height/2 - 120, width/2 + 70, height/2 - 140);
    line(width/2 + 30, height/2 - 120, width/2 + 30, height/2 - 140);
    line(width/2 + 30, height/2 - 140, width/2 + 70, height/2 - 140);
    line(width/2 - 100, height/2 - 120, width/2 - 130, height/2 - 120);
    line(width/2 - 130, height/2 - 120, width/2 - 130, height/2 - 140);
    line(width/2 - 100, height/2 - 120, width/2 - 100, height/2 - 140);
    line(width/2 - 100, height/2 - 140, width/2 - 130, height/2 - 140);
    line(width/2 + 100, height/2 - 120, width/2 + 130, height/2 - 120);
    line(width/2 + 130, height/2 - 120, width/2 + 130, height/2 - 140);
    line(width/2 + 100, height/2 - 120, width/2 + 100, height/2 - 140);
    line(width/2 + 100, height/2 - 140, width/2 + 130, height/2 - 140);
    line(width/2 + 100, height/2 - 90, width/2 + 130, height/2 - 90);
    line(width/2 - 100, height/2 - 90, width/2 - 130, height/2 - 90);
    //maze borders(PACMAN)
    line(width/2 - 160, height/2 - 170, width/2 + 160, height/2 - 170);
    line(width/2 - 160, height/2 - 170, width/2 - 160, height/2 - 60);
    line(width/2 + 160, height/2 - 170, width/2 + 160, height/2 - 60);
    line(width/2 - 160, height/2 - 60, width/2 - 100, height/2 - 60);
    line(width/2 + 160, height/2 - 60, width/2 + 100, height/2 - 60);
    line(width/2 - 100, height/2 - 60, width/2 - 100, height/2 - 25);
    line(width/2 + 100, height/2 - 60, width/2 + 100, height/2 - 25);
    line(width/2 - 100, height/2 - 25, 0, height/2 - 25);
    line(width/2 + 100, height/2 - 25, width, height/2 - 25);
    line(width/2 - 100, height/2 + 10, 0, height/2 + 10);
    line(width/2 + 100, height/2 + 10, width, height/2 + 10);
    line(width/2 - 100, height/2 + 10, width/2 - 100, height/2 + 60);
    line(width/2 + 100, height/2 + 10, width/2 + 100, height/2 + 60);
    line(width/2 - 100, height/2 + 60, width/2 - 160, height/2 + 60);
    line(width/2 + 100, height/2 + 60, width/2 + 160, height/2 + 60);
    line(width/2 - 160, height/2 + 60, width/2 - 160, height/2 + 180);
    line(width/2 + 160, height/2 + 60, width/2 + 160, height/2 + 180);
    line(width/2 + 160, height/2 + 180, width/2 - 160, height/2 + 180);
    line(width/2 - 160, height/2 + 120, width/2 - 130, height/2 + 120);
    line(width/2 + 160, height/2 + 120, width/2 + 130, height/2 + 120);
    //resizing maze may be required.
    // the game itself
    playStartUp();
    pac.move();
    for (int i = 0; i < dots.length; i++){
      dots[i].updateStatus();
    }
    for (int i = 0; i < 4; i++){
      for (int j = 0; j < powers.length; j++){
        ghosts[i].setGhostMode(powers[j].updateStatus());
        if (!ghosts[i].getMode()){
          ghosts[i].setGhostMode(CHEAT.updateStatus());
        }
        ghosts[i].ghostColUp(ghosts[i].getMode());
      }
      ghosts[i].move();
      if (!startUp){
        ghosts[i].startGhostAI();
        ghosts[i].moveOutBarrier();
      }
    }
    checkCollisions();
    if(won){
      wonDB += 1;
      if (wonDB >= 2){
        winFreeze = true;
      }
    }
  }
}
void setup(){
  size(400, 400);
  startUp = true;
}
void keyPressed(){
  if (!startUp){
    if (key == 'w'){
      pac.moveUp();
    }
    if (key == 's'){
      pac.moveDown();
    }
    if (key == 'a'){
      pac.moveLeft();
    }
    if (key == 'd'){
      pac.moveRight();
    }
    if (key == 'z'){
      CHEAT.dotConsumed();
    }
    if (key == 'x'){
      //freeze ghosts
      for (int i = 0; i < 4; i++){
        ghosts[i].setFreeze();
      }
    }
    if (key == 'c'){
      won = true;
    }
  }
}
void checkCollisions(){
  for (int i = 0; i < dots.length; i++){
    if (dist(dots[i].getXPos(), dots[i].getYPos(), pac.getXPos(), pac.getYPos()) <= 15 && !dots[i].isEaten()){
      dots[i].dotConsumed();
      dotCount += 1;
      if (dotCount >= dots.length){
        won = true;
      }
    }
  }
  for (int i = 0; i < powers.length; i++){
    if (dist(powers[i].getXPos(), powers[i].getYPos(), pac.getXPos(), pac.getYPos()) <= 15){
      powers[i].dotConsumed();
    }
  }
  for (int i = 0; i < 4; i++){
    if (dist(ghosts[i].getXPos(), ghosts[i].getYPos(), pac.getXPos(), pac.getYPos()) <= 15){
      if (ghosts[i].getMode()){
        ghosts[i].killGhost();
      }else{
       pac.killPac();
       pac.stopMovement();
       for (int j = 0; j < 4; j++){
         ghosts[j].moveTo(width/2 - 10, height/2);
         ghosts[j].stopMovement();
         ghosts[j].setBarrierMove();
       }
       startUp = true;
      }
    }
  }
}
void playStartUp(){
  if (startUp){
    //play startup sequence here
    startUpCounter += 1;
    if (startUpCounter >= 100){
      startUpCounter = 0;
      startUp = false;
    }
  }
}
