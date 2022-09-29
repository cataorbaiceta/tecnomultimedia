Mar marcito;


void setup() {
  size (630, 420);
  marcito = new Mar();
}

void draw () {
  marcito.dibujar ();
}

void keyPressed() {
  marcito.nadan();
}
