int dx = 0, dy = 0, x, y;
PACMAN test = new PACMAN(3);
//test
void draw(){
  background(255,255,255);
  stroke(75, 0, 130);
  strokeWeight(3);
  line(120, 80, 120, 300);
  test.move();
}
void setup(){
  size(400, 400);
  print(test.getLives());
}
void keyPressed(){
  if (key == 'w'){
    test.moveUp();
  }
  if (key == 's'){
    test.moveDown();
  }
  if (key == 'a'){
    test.moveLeft();
  }
  if (key == 'd'){
    test.moveRight();
  }
}
