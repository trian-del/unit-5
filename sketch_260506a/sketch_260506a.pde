//tristan s
//block 2-1

int mode;
final int INTRO = 0;
final int PAUSE = 1;
final int GAME = 2;
final int GAMEOVER = 3;

import java.util.concurrent.ThreadLocalRandom;
ArrayList<rain> idk = new ArrayList<rain>();

PFont sans16, sans48, l, ls;

PImage baby, clorox;

void setup() {
  size(800, 600, P2D);
  imageMode(CENTER);
  
  sans16 = createFont("comic.ttf", 16);
  sans48 = createFont("comic.ttf", 48);
  l=createFont("felipa.ttf", 30);
  ls=createFont("felipa.ttf", 15);
  
  baby = loadImage("baby.png");
  clorox = loadImage("clorox.jpg");

  for (int i=0; i<25; i++) {
    //random position for each raindrop
    float x=random(width);
    float y=random(height);
    //random rain speed
    float s=random(30, 50);
    idk.add(new rain(x, y, s));
  }
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == PAUSE) {
    pausescr();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  }
}
