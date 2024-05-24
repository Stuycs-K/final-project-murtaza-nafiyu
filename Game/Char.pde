class Char{
  int x, y, dx, dy;
  String type;
  Char(String t){
    x = 0;
    y = 0;
    dx = 0;
    dy = 0;
    type = t;
  }
  void move(){
    if (!(x + dx > width) && !(x + dx < 0) && !(y + dy > height) && !(y + dy < 0) && !(get(x + dx + 5, y) == color(75, 0, 130)) && !(get(x + dx - 5, y) == color(75, 0, 130))){
          x += dx;
          y += dy;
    }
    stroke(0, 0, 0);
    strokeWeight(1);
    if (type.equals("PACMAN")){
      ellipse(x, y, 10, 10);
    }
    if (type.equals("GHOST")){
      square(x, y, 5);
    }
  }
  void moveUp(){
    dy = -1;
    dx = 0;
  }
  void moveDown(){
    dy = 1;
    dx = 0;
  }
  void moveLeft(){
    dx = -1;
    dy = 0;
  }
  void moveRight(){
    dx = 1;
    dy = 0;
  }
}
