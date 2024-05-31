class Char{
  int x, y, dx, dy, storedDX, storedDY, ghostECount;
  String type;
  boolean ghostEntrance;
  Char(String t){
    x = 132;
    y = 100;
    dx = 0;
    dy = 0;
    type = t;
    ghostEntrance = false;
    ghostECount = 0;
  }
  void moveTo(int posX, int posY){
    x = posX;
    y = posY;
  }
  void move(){
    //VER 2 (STUCK ON EDGES, ask MR. K maybe?)
    if (type.equals("PACMAN")){
      if(!(get(x + dx + 10, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx + 10, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy + 10) == color(75, 0, 130))){
        if (!(get(x + dx + 10, y + dy + 5) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy - 5) == color(75, 0, 130)) && !(get(x + dx + 5, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx - 5, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx + 5, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx - 5, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx + 10, y + dy - 5) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy + 5) == color(75, 0, 130))){
          if (!(get(x + dx + 10, y + dy + 3) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy - 3) == color(75, 0, 130)) && !(get(x + dx + 3, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx - 3, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx + 3, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx - 3, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx + 10, y + dy - 3) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy + 3) == color(75, 0, 130))){
            if (!(get(x + dx + 10, y + dy + 7) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy - 7) == color(75, 0, 130)) && !(get(x + dx + 7, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx - 7, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx + 7, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx - 7, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx + 10, y + dy - 7) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy + 7) == color(75, 0, 130))){
              if (!(x + dx > width) && !(x + dx < 0) && !(get(x + dx + 10, y) == color(75, 0, 130)) && !(get(x + dx - 10, y) == color(75, 0, 130))){
                x += dx;
              }
              if (!(y + dy > height) && !(y + dy < 0) && !(get(x, y + dy + 10) == color(75, 0, 130)) && !(get(x, y + dy - 10) == color(75, 0, 130))){
                y += dy;
              }
            }
          }
        }
      }
    }
    if (type.equals("GHOST")){
      if (ghostEntrance){
        if (ghostECount < 30){
          x += dx;
          y += dy;
          ghostECount += 1;
        }else{
          ghostECount = 0;
          ghostEntrance = false;
        }
      }else{
        //CHANGE THESE
        if(!(get(x + dx + 10, y + dy + 20) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx + 10, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy + 10) == color(75, 0, 130))){
          if (!(get(x + dx + 10, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy - 5) == color(75, 0, 130)) && !(get(x + dx + 5, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx - 5, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx + 5, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx - 5, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx + 10, y + dy - 5) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy + 5) == color(75, 0, 130))){
            if (!(get(x + dx + 10, y + dy + 7) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy - 3) == color(75, 0, 130)) && !(get(x + dx + 3, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx - 3, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx + 3, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx - 3, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx + 10, y + dy - 3) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy + 3) == color(75, 0, 130))){
              if (!(get(x + dx + 10, y + dy + 3) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy - 7) == color(75, 0, 130)) && !(get(x + dx + 7, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx - 7, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx + 7, y + dy - 10) == color(75, 0, 130)) && !(get(x + dx - 7, y + dy + 10) == color(75, 0, 130)) && !(get(x + dx + 10, y + dy - 7) == color(75, 0, 130)) && !(get(x + dx - 10, y + dy + 7) == color(75, 0, 130))){
                if (!(x + dx > width) && !(x + dx < 0) && !(get(x + dx + 10, y) == color(75, 0, 130)) && !(get(x + dx - 10, y) == color(75, 0, 130))){
                  x += dx;
                }
                if (!(y + dy > height) && !(y + dy < 0) && !(get(x, y + dy + 10) == color(75, 0, 130)) && !(get(x, y + dy - 10) == color(75, 0, 130))){
                  y += dy;
                }
              }
            }
          }
        }
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
    storedDX = dx;
    dy = -2;
    dx = 0;
  }
  void moveDown(){
    storedDX = dx;
    dy = 2;
    dx = 0;
  }
  void moveLeft(){
    storedDY = dy;
    dx = -2;
    dy = 0;
  }
  void moveRight(){
    storedDY = dy;
    dx = 2;
    dy = 0;
  }
  void moveUp(String ghostMove){
    if (ghostMove.equals("BARRIER")){
      ghostEntrance = true;
    }
    storedDX = dx;
    dy = -1;
    dx = 0;
  }
  void moveDown(String ghostMove){
    if (ghostMove.equals("BARRIER")){
      ghostEntrance = true;
    }
    storedDX = dx;
    dy = 1;
    dx = 0;
  }
  void moveLeft(String ghostMove){
    if (ghostMove.equals("BARRIER")){
      ghostEntrance = true;
    }
    storedDY = dy;
    dx = -1;
    dy = 0;
  }
  void moveRight(String ghostMove){
    if (ghostMove.equals("BARRIER")){
      ghostEntrance = true;
    }
    storedDY = dy;
    dx = 1;
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
