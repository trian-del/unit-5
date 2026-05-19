void game() {
  noStroke();
  fill(255);
  line(width/2,0,width/2,height);
  //draw paddles
  background(0);
  fill(255);
  circle(lX, lY, lS);
  circle(rX, rY, rS);
  circle(bX, bY, bS);

  //movement
  if (wkey && lY >=0) lY -= 5;
  if (skey && lY <= height) lY += 5;
  if (upkey && rY >=0) rY -= 5;
  if (downkey && rY <= height) rY += 5;

  bX -= bvX;
  bY += bvY;

  //collision
  if (bY<=0 || bY >=height) bvY*=-1;
  
  //left paddle
  if (dist(lX, lY, bX, bY)<=lS/2+bS/2) {
    bvX = (bX - lY)/40;
    bvY = (bY - lY)/40;
  }
  
  //right paddle
  if (dist(rX, rY, bX, bY)<=rS/2+bS/2) {
    bvX = (bX - rY)/40;
    bvY = (bY - rY)/40;
  }
  
  //scoring
  textSize(40);
  text(lscore,width/4,100);
  text(rscore,3*width/4,100);
  
  if (bX >= width) {
    lscore++;
    bX = width/2;
    bY = height/2;
  }
  if (bX <= 0) {
    rscore++;
    bX = width/2;
    bY = height/2;
  }
}

void gameMRel() {
}
