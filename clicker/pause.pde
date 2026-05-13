void pausescr() {
  theme.pause();
  fill(0);
  textFont(sans48);
  text("pause",width/2,height/2);
}

void pauseMRel() {
  mode = GAME;
}
