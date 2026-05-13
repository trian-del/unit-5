void option() {
  float c=0;
  if(mouseX>=10 && mouseX <=100 && mouseY >= 555) c=120;
  else c = 0;
  background(255);
  textFont(sans16);
  fill(c);
  text("back",50,570);
}
