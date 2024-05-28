class Char{
  int x, y, dx, dy;
  String type;
  Char(String t){
    x = 132;
    y = 100;
    dx = 0;
    dy = 0;
    type = t;
  }
  void moveTo(int posX, int posY){
    x = posX;
    y = posY;
  }
  void move(){
    //VER 2 (STUCK ON EDGES, ask MR. K maybe?)
    if (type.equals("PACMAN")){
      if (!(x + dx > width) && !(x + dx < 0) && !(get(x + dx + 10, y) == color(75, 0, 130)) && !(get(x + dx - 10, y) == color(75, 0, 130)) && !(get(x + dx + 10, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy - 10) == color(75, 0, 130))){
        x += dx;
      }
      if (!(y + dy > height) && !(y + dy < 0) && !(get(x, y + dy + 10) == color(75, 0, 130)) && !(get(x, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx + 10, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy - 10) == color(75, 0, 130))){
        y += dy;
      }
    }
    if (type.equals("GHOST")){
      if (!(x + dx > width) && !(x + dx < 0) && !(get(x + dx + 20, y) == color(75, 0, 130)) && !(get(x + dx - 20, y) == color(75, 0, 130)) && !(get(x + dx + 20, y + dy + 20) == color(75, 0, 130)) && !(get(x + dx - 20, y + dy - 20) == color(75, 0, 130))){
        x += dx;
      }
      if (!(y + dy > height) && !(y + dy < 0) && !(get(x, y + dy + 20) == color(75, 0, 130)) && !(get(x, y + dy - 20) == color(75, 0, 130)) && !(get(x + dx + 20, y + dy + 20) == color(75, 0, 130)) && !(get(x + dx - 20, y + dy - 20) == color(75, 0, 130))){
        y += dy;
      }
    }
    //VER 1
    //if (!(x + dx > width) && !(x + dx < 0) && !(y + dy > height) && !(y + dy < 0) && !(get(x + dx + 5, y) == color(75, 0, 130)) && !(get(x + dx - 5, y) == color(75, 0, 130)) && !(get(x, y + dy + 5) == color(75, 0, 130)) && !(get(x, y + dy - 5) == color(75, 0, 130))){
    //      x += dx;
    //      y += dy;
    //}
    stroke(0, 0, 0);
    strokeWeight(1);
    if (type.equals("PACMAN")){
      ellipse(x, y, 20, 20);
    }
    if (type.equals("GHOST")){
      square(x, y, 20);
    }
  }
  void moveUp(){
    dy = -2;
    dx = 0;
  }
  void moveDown(){
    dy = 2;
    dx = 0;
  }
  void moveLeft(){
    dx = -2;
    dy = 0;
  }
  void moveRight(){
    dx = 2;
    dy = 0;
  }
  int getXPos(){
    return x;
  }
  int getYPos(){
    return y;
  }
  void stopMovement(){
    dx = 0;
    dy = 0;
  }
}
