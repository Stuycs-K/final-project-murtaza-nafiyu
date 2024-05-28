class GHOST extends Char{
  boolean eatMode;
  boolean onCooldown = false;
  int cooldownTime = 0;
  GHOST(){
    super("GHOST");
  }
  boolean getMode(){
    return eatMode;
  }
  void startGhostAI(){
    double RNG = Math.random();
    if (!onCooldown){
      if (RNG <= 0.25){
        this.moveUp();        
      }else if (RNG <= 0.5){
        this.moveDown();
      }else if (RNG <= 0.75){
        this.moveRight();
      }else{
        this.moveLeft();
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
