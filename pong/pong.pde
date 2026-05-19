//tristan s
//block 2-1

import ddf.minim.*;

//mode variables
int mode;
final int INTRO = 0;
final int PAUSE = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int GAME2 = 4;

//paddle variables
float lX, lY, lS, rX, rY, rS;

//ball variables
float bX, bY, bS, bvX, bvY;

//score
int lscore, rscore;

//kb variables
boolean wkey, skey, upkey, downkey = false;

//sound variables
Minim minim;
AudioPlayer theme, bump, rain, thunder;

void setup() {
  size(800, 600, P2D);
  imageMode(CENTER);
  textAlign(CENTER);
  
  //minim
  minim = new Minim(this);
  
  //paddle init
  
  //left
  lX = 0;
  lY = height/2;
  lS = 200;
  
  //right
  rX = width;
  rY = height/2;
  rS = 200;
  
  //ball init
  bX = width/2;
  bY = height/2;
  bS = 20;
  bvX = 5;
  bvY = 5;
  
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
  } else if (mode == GAME2) {
    game2();
  }
}
