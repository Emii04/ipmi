boolean ColorMitad (int posX, int posY) {
  if (mouseX > posX && mouseY > posY) {
    return true;
  } else {
    return false;
  }
}


boolean ColorOtraMitad (int posH, int posM) {
  if (mouseX > posH && mouseY < posM) {
    return true;
  } else {
    return false;
  }
}



void reinicio() {
  mouseX = 0;
  mouseY = 0;
}
void keyPressed() {
  if (key == ' ') {
    reinicio();
  }
}
