float x, vy;
int score, printvy;
float y=height/2;

void game() {
  theme.play();

  background(255);
  fill(0);
  image(clorox, 650, 250);
  image(baby, x, y);
  x+=random(5, 10);
  vy+=0.1;
  y+=vy;
  
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(50,50,50);
  line(45,40,45,60);
  line(55,40,55,60);

  if (x >= 600) {
    mode=GAMEOVER;
  }
  if (y <= 0 || y >= height-100) {
    vy*=-1.1;
  }

  printvy=round(vy);
  fill(0);
  textFont(sans16);
  text("score: " + score, 700, 50);
  text("velocity: " + printvy, 700, 70);
}

void gameMRel() {
  if (dist(mouseX,mouseY,50,50)<100){
    mode = PAUSE;
  }
  if (dist(x, y, mouseX, mouseY)<200) {
    bump.play();
    bump.rewind();
    x=0;
    score+=1;
  }
}
