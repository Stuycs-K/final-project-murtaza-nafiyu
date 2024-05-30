class GHOST extends Char{
  boolean eatMode, onCooldown;
  int cooldownTime, x, y;
  GHOST(int spawnX, int spawnY){
    super("GHOST");
    cooldownTime = 0;
    onCooldown = false;
    x = spawnX;
    y = spawnY;
  }
  boolean getMode(){
    return eatMode;
  }
  void startGhostAI(){
    double RNG = Math.random();
    if (!onCooldown){
      if (RNG <= 0.25){
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
  void setGhostMode(boolean ghostMode){
    eatMode = ghostMode;
  }
  void killGhost(){
    this.moveTo(width/2, height/2);
  }
}
