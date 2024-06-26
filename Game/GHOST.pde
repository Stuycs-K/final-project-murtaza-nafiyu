class GHOST extends Char{
  boolean eatMode, onCooldown, ghostBarrierMove, edible, freeze;
  int cooldownTime, x, y, gBMCount;
  GHOST(int spawnX, int spawnY){
    super("GHOST");
    cooldownTime = 0;
    onCooldown = false;
    x = spawnX;
    y = spawnY;
    ghostBarrierMove = true;
    gBMCount = 0;
    edible = false;
    freeze = false;
  }
  boolean getMode(){
    return eatMode;
  }
  void startGhostAI(){
    if (!ghostBarrierMove && !freeze){
      double RNG = Math.random();
      if (!onCooldown){
        if (RNG <= 0.25){ //modified for testing
          if (eatMode){
            this.moveUp("EAT");
          }else{
            this.moveUp(); 
          }    
        }else if (RNG <= 0.5){
          if (eatMode){
            this.moveDown("EAT");
          }else{
            this.moveDown(); 
          }    
        }else if (RNG <= 0.75){
          if (eatMode){
            this.moveLeft("EAT");
          }else{
            this.moveLeft(); 
          }    
        }else{
          if (eatMode){
            this.moveRight("EAT");
          }else{
            this.moveRight(); 
          }    
        }
        onCooldown = true;
        cooldownTime = 0;
      }else{
        cooldownTime += 1;
        if (cooldownTime == 50){
          onCooldown = false;
        }
      }
    }
  }
  void setGhostMode(boolean ghostMode){
    if (edible){
      eatMode = ghostMode;
    }else{
      eatMode = false;
    }
  }
  void setFreeze(){
    freeze = !freeze;
  }
  void killGhost(){
    this.moveTo(width/2 - 10, height/2);
    edible = false;
    setBarrierMove();
  }
  void setBarrierMove(){
    ghostBarrierMove = true;
  }
  void moveOutBarrier(){
    if (ghostBarrierMove){
      if (gBMCount < 55){
        this.moveUp("BARRIER");
        gBMCount += 1;
      }else{
        if (gBMCount < 100){     
          this.moveLeft();
          gBMCount += 1;
        }else{
          gBMCount = 0;
          ghostBarrierMove = false;
          edible = true;
        }
      }
    }
  }
}
