boolean clc;
void option() {
  float c=0;
  if (mouseX>=10 && mouseX <=100 && mouseY >= 555) c=120;
  background(255);
  textFont(sans16);
  fill(c);
  text("back", 50, 570);
  b(width/2-150, height/2, 150);
  b(width/2, height/2, 150);
  b(width/2+150, height/2, 150);
}

void optionBackMRel() {
  if (mouseX>=10 && mouseX <=100 && mouseY >= 555) mode = INTRO;
}

void optionMRel() {
  if (clc){
  }
}

void b(float x, float y, float s) {
  float c1=255;
  if (mouseX>=x-s/2 && mouseX <= x-s/2+s && mouseY >= y-s/2 && mouseY <= y-s/2+s){
    c1 = 122;
    clc=true;
  } else clc = false;
  fill(c1);
  square(x-s/2, y-s/2, s);
}
