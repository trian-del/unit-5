//tristan s
//block 2-1

import ddf.minim.*;

//mode variables
int mode;
final int INTRO = 0;
final int PAUSE = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int OPTION = 4;

import java.util.concurrent.ThreadLocalRandom;
ArrayList<rain> idk = new ArrayList<rain>();

//font variables
PFont sans16, sans48, l, ls;

//image variables
PImage baby, clorox;

//sound variables
Minim minim;
AudioPlayer theme, bump, rain, thunder;

void setup() {
  size(800, 600, P2D);
  imageMode(CENTER);
  textAlign(CENTER);
  
  //font setup
  sans16 = createFont("comic.ttf", 16);
  sans48 = createFont("comic.ttf", 48);
  l=createFont("felipa.ttf", 30);
  ls=createFont("felipa.ttf", 15);
  
  //image setup
  baby = loadImage("baby.png");
  clorox = loadImage("clorox.jpg");
  
  //rain setup
  for (int i=0; i<25; i++) {
    //random position for each raindrop
    float x=random(width);
    float y=random(height);
    //random rain speed
    float s=random(30, 50);
    idk.add(new rain(x, y, s));
  }
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  bump = minim.loadFile("bump.mp3");
  rain = minim.loadFile("rain.mp3");
  thunder = minim.loadFile("thunder.mp3");
  
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
  } else if (mode == OPTION) {
    option();
  }
}
