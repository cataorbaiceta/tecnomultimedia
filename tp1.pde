


PImage Titulo, Woody, BoPeep, Forky, DYB , Buzz, Caballero, General, Sonido, General2, Pelota, Directores, Disney ;
PFont Fuente;
int subir, bajar, izquierda, derecha ;
Boolean boton = false;



void setup (){ 
size (500,500);
Disney= loadImage ("disney.jpg");
Titulo= loadImage ("titulo.png") ; 
Woody = loadImage ("tp8.png") ; 
BoPeep = loadImage ("tp7.png") ;
Forky = loadImage ("tp2.png");
DYB = loadImage ( "tp1.png");
Buzz = loadImage ("tp3.png");
Caballero = loadImage ("tp4.png");
General = loadImage ("tp5.png");
Sonido = loadImage ("tp6.png");
General2 = loadImage ("tp9.png");
Pelota = loadImage ("pelotaz.png");
Directores = loadImage ("tp10z.png");
Fuente = loadFont ("BerlinSansFBDemi-Bold-48.vlw");
}

void draw (){
  frameCount --;
  background (0);

 image (Disney, 0, 0, width, height);
  
  fill (25, 60, 255);
  ellipse (253, 430, 100, 70);
  fill(255);
  textSize(32);
  textFont (Fuente ,35);
  text ("Inicio", 212, 440);
  if (boton==true) {
    background (0);
    frameCount++;
    subir --;
    bajar++;
    derecha++;
    izquierda --;
  }
 
 println (frameCount, mouseX, mouseY); 
 if (frameCount > 0 && frameCount < 100){
 image (General2, 0,0, width, height);
 image (Titulo, 120,350, width/2 , height/4);

 }
 if (frameCount > 90 && frameCount < 350) {
 image (Woody, 0,0, width, height);
 textFont (Fuente ,50);
 fill (255,242,95);
 text ("Woody", 230, 200  + bajar); 
}
if (frameCount > 340 && frameCount < 650){
 image (Buzz, 0,0, width, height);
 fill (255,242,95);
 textFont (Fuente ,50);
 text ("Buzz",80, -50 + bajar) ;
 
}
if (frameCount > 600 && frameCount < 950){
 image (BoPeep, 0,0, width, height);
 fill (255,242,95);
 textFont (Fuente ,50);
 text ("BoPeep", 250, -350 + bajar);
}
 if (frameCount > 900 && frameCount < 1400){
 image (Directores , 0,0, width, height);
  fill (255,242,95);
 textFont (Fuente ,50);
 text (" Directed by \n Josh Cooley", -900 + derecha ,420);
}
 if (frameCount > 1400 && frameCount < 1750){
 image (Sonido, 0,0, width, height);
 fill (255,242,95);
 textSize (30) ;
 text (" Music Composed by \n Randy Newman y Neil Hem" , 0 ,-1200 + bajar) ;
 }
 if (frameCount > 1740 && frameCount < 2200){
 image (General, 0,0, width, height);
 fill (255,242,95);
 textSize (30) ;
 text ("           Produced by \n Mark Nielsen, Jonas Rivera", -1740 + derecha, 450); 
 }
 if (frameCount > 2330 && frameCount < 2700){
   fill (random (100,255), random (100,255), (0)) ;
   text ( "  press C \n to restart", 160, 250) ;
  }
 if (frameCount > 2200 && frameCount < 2700){
   image (Pelota, -2200 + derecha, 150, width/2, height/2) ;
   
 }
}

void mouseClicked() {
  if (dist(mouseX, mouseY, 253, 430) < 75) {
    boton=true;
  }
}
void keyPressed (){
 if (key == 'c' || key == 'C') ; {
    frameCount = 0;
    derecha = 0 ;
    izquierda = 0 ;
    subir = 0 ;
    bajar = 0 ;
 }
}
