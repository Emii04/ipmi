//Giuliano Emiliano
//Comisión 2
//119043/4

//ASIGNAR VALOR A LA VARIABLE
String estado;
int miVariable;
String textoInicio2;
String textoInicio;
String texto;
String texto2;
String texto3;
String textoFinal;
float miTexto;
//De prueba
float posX, posY, tamX, tamY;
float posX1, posY1, tamX1, tamY1;
float velX, velY;
//Color random
color relleno;

char caracter;
boolean VerdaderoOFalse;
//*+Imagenes
PImage Juego1, Juego2, Juego3, Juego4, Presentación;
boolean mostrarJuego1 = true;
boolean mostrarJuego2 = true;
boolean Adentro2;
//Texto fuente
PFont novo;



//ASIGNAR VALOR A LA VARIABLE
void setup() {
  size(640, 480);
  textAlign(CENTER, CENTER);
  
  //de prueba
  posX = 100;
  posY = 150;
  tamX = 100;
  tamY = 50;
  
  posX1 = 100;
  posY1 = 150;
  tamX1 = 100;
  tamY1 = 50;
  
  velX = velY = 1;
  relleno = color(120, 0, 0);
  
  //calcular :
  //println( 3 <= 3 );
  
  //variables asignadas
  miVariable = 1000;
  textoInicio2 = "Hola, \nte invito a ver \nmi trabajo \nde animación.";
  textoInicio = "Five \nNight \nat \nFreddy's";
  textoFinal = "Gracias por ver \nesta presentación \ndel trabajo N°2. \nNos vemos.";
  texto3 = "Para avanzar debe de sobrevivir \nhasta las 6am, durante 5 dias \n(tiempo dentro \ndel juego), para terminarlo.";
  texto2 = "Consiste en que tenes que revisar \nlas camaras, siendo un seguridad, \nen ella te pueden matar los animatronicos \nposeidos del lugar si no tiene cuidado el jugador.";
  texto = "Five Night At Freddy's es \nuna saga de juegos de \nterror que empezo siendo \nlanzado en 2014 \ny creado por Scott Cawthon.";
  miTexto = random(10, 120);
  caracter = '1';
  VerdaderoOFalse = true;
  
  //Tipo de letra
  novo = loadFont("fnaf.vlw");
  textFont(novo);

  //Presentación
  Presentación = loadImage("Presentación.jpg");
  //Imagen1
  Juego1 = loadImage("Juego1.jpg");
  //Imagen2
  Juego2 = loadImage("Juego2.jpg");
  //imagen3
  Juego3 = loadImage("Juego3.jpg");
  //imagen final :D
  Juego4 = loadImage("Juego4.jpg");
  
  //tamaño texto
  textSize(25);
  
  //visuallizar texto abajo
  println(VerdaderoOFalse);
}

void draw() {
  background(0);
  miTexto = random(10, 120);
  miVariable = frameCount / 1;

  //intento de parar la imagen
  //if( posY <= 10 ){
  
  //hasta aca
  
  //if y toda la cosa con calculos
  if (keyPressed) {
    if (key == 'x') {
      posX = random(width);
    }
    if (key == 'y') {
      posY = random(height);
    }
  }

  //que toque el borde derecho u arriba y vuelva ,y asi//
  if (posX >= width - tamX / 2) { //derecho
    velX = -1;
  }
  if (posX <= 0 + tamX / 2) { //izquierdo
    velX = 1;
  }
  if (posY <= height - tamY / 2) {
    velY = -1;
  }
  if (posY <= 0 + tamY / 2) {
    velY = 1;
  }

  //prueba de movimiento de la figura
  posX = posX + velX;
  posY += velY;

  //prueba mas tamX1, tamY1 y posX1 posY1
  if (posX1 == width - tamX / 2) { //derecho
    velX = -1;
  }
  if (posX1 <= 0 + tamX / 5) { //izquierdo
    velX = 1;
  }
  if (posY1 <= height - tamY / 2) {
    velY = -1;
  }
  if (posY1 <= 0 + tamY / 2) {
    velY = 1;
  }
  //que toque el borde derecho u arriba y vuelva ,y asi//
  
   Adentro2 = (mouseX > 560 && mouseY > 360 && mouseX < 620 && mouseY < 385);
  println( Adentro2 );
  
  
  //de prueba:
  //fill(relleno);
  //ellipse( posX, posY, tamX, tamY );
  //fill(255);
  //text( "FNAF", posX, posY );
  //Presentación
  if (frameCount / 60 < 5) {
    image(Presentación, 0, 0, 640, 480);
    
    
    //texto nais incial
    fill(0, 50, 100);
    rect(360, 340, 260, 110);
    rect(360, 450, 10, 50);
    rect(610, 450, 10, 50);
    
    fill(255);
    textSize(20);
    text(textoInicio, 560, 70);
    fill(0);
    text(textoInicio2, 500, 395);
  }

  //Imagen1
  else if (frameCount / 60 >= 5 && frameCount / 60 < 10) {
    image(Juego1, 600-frameCount, 0, 640, 480);
    textSize(25);
    fill(255);
    text(texto, 220, 270);
    //bordes de marco
    
  } 
  //Imagen2
  else if (frameCount / 60 >= 10 && frameCount / 60 < 17) {
    textSize(20);
    image(Juego2, 200 - posX, 50, 640, 430);
    fill(100, 0, 0);
    rect(43, 13, 570, 100);
    fill(255, 0, 0);
    text(texto2, 430 - posX1, 60);
  }
  //Imagen3
  else if (frameCount / 60 >= 17 && frameCount / 60 < 24) {
    textSize(23);
    image(Juego3, 0, 0, 640, 370); // Ajusta las coordenadas y el tamaño según sea necesario
    fill(0);
    rect(0, 370, 700, 200);
    fill(200, 0, 0);
    text(texto3, 600 - posX, 425); // Ajusta las coordenadas según sea necesario
  }
  //ImganeFinal
  else if (frameCount / 60 >= 24 && frameCount / 60 < 950) {
    image(Juego4, 0, 0, 640, 480);
//noStroke();
    fill(100, 0, 0);
    rect(370, 50, 250, 100);
    rect(370, 0, 10, 50);
    rect(610, 0, 10, 50);
    fill(255);
    textSize(20);
    text(textoFinal, 500, 100);
    
    fill( 255, 0, 0 );
    rect( 560, 360, 60, 25 );
    fill( 200, 0, 0 );
    rect( 620, 368, 35, 10 );
  textSize(11);
  fill(0);
  text( "reiniciar", 592, 375);
    
    
  }
}

void mousePressed() {
  if(mouseX > 560 && mouseY > 360 && mouseX < 620 && mouseY < 385){
    frameCount = 0;
    posX = 100;
    posY = 150;
    tamX = 100;
    tamY = 50;
  }
}
