class rain {
  float x, y, s;

  //dont know what this does
  rain(float x, float y, float s) {
    this.x=x;
    this.y=y;
    this.s=s;
  }

  //======apply rain speed and reset=========
  void move() {
    x += s;
    y += s;
    if (x>width) {
      x=-30;
    }
    if (y>height) {
      y=-30;
    }
  }
  //===================================

  void display() {
    drop(x, y);
  }

  //==========raindrop shape=============
  void drop(float x, float y) {
    push();
    translate(x, y);
    rotate(radians(135));
    noStroke();
    fill(176, 225, 241);
    rect(0, 0, 1, 10);
    pop();
  }
}
