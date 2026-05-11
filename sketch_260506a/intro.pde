float dim=255;
float dimspd;
float tactC=255;

void intro() {
  background(255);
  fill(tactC);
  rect(300, 350, 200, 80);

  if (mouseX>=300 && mouseX <=500 && mouseY >=350 && mouseY<=430) {
    tactC=122;
  } else {
    tactC=255;
  }

  fill(0);
  textFont(sans16);
  text("insert text", 360, 395);
  textFont(sans48);
  text("insert text", 280, 250);
}

void introMRel() {
  if (mouseX>=300 && mouseX <=500 && mouseY >=350 && mouseY<=430) {
    mode = GAME;
  }
}
