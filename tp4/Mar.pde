class Mar {
  PImage Sea;
  Peces Pecesitos;
  Sirenita Ariel;


  Mar() {
    Sea = loadImage("mar.jpg");
    Pecesitos = new Peces();
    Ariel = new Sirenita();
  }
  void dibujar() {
    image(Sea, 0, 0, 630, 420);
    Pecesitos.dibujar();
    Ariel.dibujar();
  }
  void nadan() {
    Pecesitos.nadar();
  }
}
