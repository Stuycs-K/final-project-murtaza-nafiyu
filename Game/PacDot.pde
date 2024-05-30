class PacDot{
  String type;
  int x, y, ghostTimer;
  boolean eaten, ghostEdible;
  PacDot(String typeInput, int xInput, int yInput){
    type = typeInput;
    x = xInput;
    y = yInput;
    eaten = false;
    ghostEdible = false;
    ghostTimer = 0;
  }
  boolean updateStatus(){
    if (type.equals("PACDOT") && !eaten){
      ellipse(x, y, 5, 5);
    }
    if(type.equals("POWERPELLET") && !eaten){
      ellipse(x, y, 10, 10);
    }
    if (ghostEdible){
      ghostTimer += 1;
      if (ghostTimer >= 500){
        ghostEdible = false;
        ghostTimer = 0;
      }else{
        return true;
      }
    }
    return false;
  }
  void dotConsumed(){
    eaten = true;
    if(type.equals("POWERPELLET")){
      ghostEdible = true;
    }
  }
  int getXPos(){
    return x;
  }
  int getYPos(){
    return y;
  }
}
