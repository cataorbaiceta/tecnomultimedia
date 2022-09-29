class Sirenita {
  PImage sirenita1;

  Sirenita() {
    sirenita1=loadImage("sirenita.png");
  }
  void dibujar() {
    image(sirenita1, 315, 200, 200, 200);
  }
}
