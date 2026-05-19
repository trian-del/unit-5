void mouseReleased() {
  if (mode == INTRO) {
    introMRel();
  } else if (mode == GAME) {
    gameMRel();
  } else if (mode == PAUSE) {
    pauseMRel();
  }
}
