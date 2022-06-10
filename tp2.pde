int tam =30;
int cantColumnas =20;
int cantFilas = 14 ;
int desfasaje= 70;
int incDesfasaje= 10;
color colorFondo = color (0);
void setup (){
size (400,400);
stroke(120);
strokeWeight(3);
}

void draw (){
  
  for (int f=0; f< cantFilas ; f+=1){
    for (int c= 0 ; c< cantColumnas; c+=1){
      if ( c%2 == 0) {
        fill( colorFondo) ;
      }else{
        fill (random (100,255),random (100,255), (200));
      }
      rect (c* tam - desfasaje, f * tam, tam,tam);
     
  }
  if (f%2==0) {
  desfasaje += incDesfasaje;
  }else{
    desfasaje -= incDesfasaje;
  }
  }
}
void mouseMoved() {
  incDesfasaje= round (map ( mouseX, 0, width,30,10)) ;
  colorFondo = round(map(mouseY, 0,height,0,255));
}

void mouseClicked (){
colorFondo = round(map(mouseY, 0,height,0,0));
 }
