class Food {

  float posX = random(100, width - 100);
  float posY = random(100, height -100);

  void display() {
    fill(255, 255, 255);
    ellipse(posX, posY, 20, 20);
  }
}