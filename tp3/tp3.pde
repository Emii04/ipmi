//https://youtu.be/V-A1ZUyIOMY
//Giuliano Emiliano
//Comisión 2
//119043/4

PImage foto1;
int cant = 10;
color CambioDeColor;
int cuadrado;

void setup() {
  size(800, 400);
  foto1 = loadImage("foto1.jpg");
}


void draw() {
  image(foto1, 0, 0);
  background(0,0,255);

 

  for ( int i = 0; i < width; i++ ) {
      stroke(0, 0, i-40);
      line( 600+i, 5, 600+i, height-5 );
      line( 600-i , 5, 600-i, height-5 );
       
  }
   strokeWeight(0);
        fill(0, 0, 255);
        rect(500, 95, 200, 200);
  
  if (mouseX > 0) {
    float mx = map(mouseX, 0, width, 0, 255);
    float my = map(mouseY, 0, height, 0, 255);
    fill(mx, 0, my);
    strokeWeight(0);
    rect(500, 95, 200, 200);
    
  }
  for (int i=7; i<400; i+=11) {
    strokeWeight(5.5);
    stroke(255);
    line(i, i, 800, i);
    if (mousePressed) {
      for (int x=7; x<800; x+=50) {
        float mx = map(mouseX, 0, width, 0, 255);
        float my = map(mouseY, 0, height, 0, 255);
        
        strokeWeight(5.5);
        stroke(mx,0,my);
        line(x, x+mouseY, 800, x-mouseY);
      }
    }
    //imagen a la izquierda
    image( foto1, 0, 0);
  }
}
  
  
void keyPressed() {
  if ( key == 'r' ) {
    mouseX = 0;
    mouseY = 0;
  }
}
  
  
  
  
  
