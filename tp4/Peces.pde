class Peces {
  PImage Pecesitos;
  float x, y;
  Peces() {
    Pecesitos = loadImage("peces.png");
    x=60;
    y=60;
  }

  void dibujar() {
    image(Pecesitos, x, y, 100, 150);
  }

  void nadar() {
    if (keyPressed && (key==CODED)) {
      if (keyCode==LEFT) {
        x -=5;
      } else if (keyCode == RIGHT) {
        x +=5;
      }
      image(Pecesitos, x, y, 100, 150);
    }
  }
}
