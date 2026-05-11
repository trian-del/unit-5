float x, vy;
int score, printvy;
float y=height/2;

void game() {
  background(255);
  fill(0);
  image(clorox,650, 250);
  image(baby, x, y);
  x+=random(5, 10);
  vy+=0.1;
  y+=vy;
  if (x >= 600) {
    mode=GAMEOVER;
  }
  if (y <= 0 || y >= height) {
    vy*=-1.1;
  }
  printvy=round(vy);
  textFont(sans16);
  text("score: " + score, 650, 570);
  text("velocity: " + printvy, 650, 590);
}

void gameMRel() {
  if (dist(x, y, mouseX, mouseY)<200) {
    x=0;
    score+=1;
  }
}
