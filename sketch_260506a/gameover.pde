boolean t=false;
float opacity;

void gameover() {

  //========general image==========
  background(0);
  grave(width/2, height/2);
  fill(9, 80, 21);
  ellipse(width/2, height+80, 700, 500);
  noStroke();
  fill(12, 100, 26);
  ellipse(width/2-20, height+80, 680, 500);
  //========================

  //===========text===========
  fill(62, 59, 59);
  textFont(l);
  text("WELP", width/2-40, height/2);
  textFont(ls);
  text("''okay''", width/2-20, height/2+40);
  //========================


  //========rain setup===========
  //for(class;variable:array variable)??
  for (rain rain : idk) {
    rain.move();
    rain.display();
  }

  //===============thunder=====================
  int rand=ThreadLocalRandom.current().nextInt(300);
  if (rand==1) {
    t=true;
    opacity=230;
  }
  if (t==true) {
    opacity-=4;
    fill(255, 255, 255, opacity);
    rect(-10, -10, width+10, height+10);
  }
  if (opacity==0) {
    t=false;
  }
  //=================================
}

void grave(float x, float y) {
  push();
  translate(x, y);
  fill(124, 131, 139);
  noStroke();
  rect(-75, 0, 150, 150);
  circle(0, 0, 150);
  pop();
}
