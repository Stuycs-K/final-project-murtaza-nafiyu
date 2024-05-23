class PACMAN extends Char{
  int lives;
  PACMAN(int l){
    super("PACMAN");
    lives = l;
  }
  int getLives(){
    return lives;
  }
  //set PAC-MAN collisions here
}
