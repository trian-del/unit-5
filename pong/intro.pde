void intro() {
  
  background(255);

  button(190, 350, 200, 80, "1");
  button(410, 350, 200, 80, "2");
  
  textSize(64);
  text("pong", width/2, 250);
}

void introMRel() {
  if (mouseX>=190 && mouseX <=390 && mouseY >=350 && mouseY<=430) {
    mode = GAME;
  }
  if (mouseX>=410 && mouseX <=610 && mouseY >=350 && mouseY<=430) {
    mode = GAME2;
  }
}

void button(float x, float y, float w, float l, String s) {
  float t=0;
  if (mouseX>=x && mouseX <=x+w && mouseY >=y && mouseY<=y+l) {
    t=122;
  } else {
    t=255;
  }
  
  textSize(16);
  
  fill(t);
  rect(x, y, w, l);

  fill(0);
  text(s, x+w/2, y+l/2);
}
