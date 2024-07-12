//Link de youtube: https://www.youtube.com/watch?v=V-A1ZUyIOMY
//Giuliano Emiliano
//Comisión 2
//119043/4

//tp3 recuperatorio
//link de youtube recuperatorio: https://www.youtube.com/watch?v=0LQhE-O3jjA

PImage foto1;
float x;
float y;
float tam;


void setup() {
  size(800, 400);
  foto1 = loadImage("foto1.jpg");
  x = 500;
  y = 95;
  tam = 200;
}



void Cuadrado(color Azul, float px, float py, float ptam) {
  strokeWeight(0);
  fill(Azul);
  rect(px, py, ptam, ptam);
}




void AgrandarCuadradoAzul() {
  tam = map(mouseY, 0, height, 200, 230);
  x = map(mouseY, 0, height, 500, 485);
  y = map(mouseY, 0, height, 95, 80);
}



void FondoDegradeAzul() {
  for ( int i = 0; i < width; i++ ) {
    stroke(0, 0, i-40);
    line( 600+i, 5, 600+i, height-5 );
    line( 600-i, 5, 600-i, height-5 );
    if (ColorMitad(400, 200)) {
      stroke(i-40, 0, 0);
      line( 600+i, 5, 600+i, height-5 );
      line( 600-i, 5, 600-i, height-5 );
    } else {
      if(ColorOtraMitad(400, 400)){
      stroke(0, i-40, 0);
      line( 600+i, 5, 600+i, height-5 );
      line( 600-i, 5, 600-i, height-5 );
      }
    }
  }
}



void LineasYColor(float cx, float cy) {
  for (int i=7; i<400; i+=11) {
    strokeWeight(5.5);
    stroke(255);
    line(i, i, 800, i);
    if (mousePressed) {
      for (int x=7; x<800; x+=50) {
        strokeWeight(5.5);
        stroke(cx, 0, cy);
        line(x, x+mouseY, 800, x-mouseY);
      }
    }
  }
}


void ColorCuadrado(float xx, float yy) {
  if (key == 'c') {
    Cuadrado(color(xx, 0, yy), x, y, tam);
  }
}



void draw() {
  background(0, 0, 255);
  println("Posición del mouse: (" + "posX=" + mouseX + ", " + "posY=" + mouseY + ")");

  //lineas detras con degrade
  FondoDegradeAzul();
  if (ColorMitad (400, 200)) {
    FondoDegradeAzul();
  } else {
    if (ColorOtraMitad (400, 200));
  }


  //Cuadrado azul
  Cuadrado(color(0, 0, 255), 500, 95, 200);
  AgrandarCuadradoAzul();

  //Colores del cuadrado
  ColorCuadrado(map(mouseX, 0, width, 0, 255), map(mouseY, 0, width, 0, 255));

  //Lineas coloridas
  LineasYColor(map(mouseX, 0, width, 0, 255), map(mouseY, 0, width, 0, 255));

  //imagen a la izquierda
  image( foto1, 0, 0);
}
