class PACMAN extends Char{
  int lives, x, y;
  PACMAN(int l, int spawnX, int spawnY){
    super("PACMAN");
    lives = l;
    x = spawnX;
    y = spawnY;
  }
  int getLives(){
    return lives;
  }
  void killPac(){
    lives -= 1;
    this.moveTo(x, y);
    println("PAC-MAN has died! He now has " + lives + " lives left.");
  }
  //set PAC-MAN collisions here
}
