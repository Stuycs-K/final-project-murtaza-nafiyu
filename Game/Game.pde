int dx = 0, dy = 0, x, y, startUpCounter = 0;
boolean startUp = false;
PACMAN pac = new PACMAN(3, width/2, height/2);
GHOST ghost1 = new GHOST();
GHOST ghost2 = new GHOST();
GHOST ghost3 = new GHOST();
GHOST ghost4 = new GHOST();
GHOST[] ghosts = new GHOST[]{ghost1, ghost2, ghost3, ghost4};
//test
void draw(){
  background(255,255,255);
  stroke(75, 0, 130);
  strokeWeight(3);
  line(10, 10, 10, height - 10);
  line(width - 10, 10, width - 10, height - 10);
  line(10, 10, width - 10, 10);
  line(10, height - 10, width - 10, height - 10);
  playStartUp();
  pac.move();
  for (int i = 0; i < 4; i++){
    ghosts[i].move();
    if (!startUp){
      ghosts[i].startGhostAI();
    }
  }
  checkCollisions();
}
void setup(){
  size(400, 400);
  print(pac.getLives());
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
  }
}
void checkCollisions(){
  for (int i = 0; i < 4; i++){
    if (dist(ghosts[i].getXPos(), ghosts[i].getYPos(), pac.getXPos(), pac.getYPos()) <= 20){
       pac.killPac();
       pac.stopMovement();
       for (int j = 0; j < 4; j++){
         ghosts[j].moveTo(width/2, height/2);
         ghosts[j].stopMovement();
       }
       startUp = true;
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
