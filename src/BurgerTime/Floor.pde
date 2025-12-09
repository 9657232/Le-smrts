class Info {
  // Member Variables
  int x, y, x2, x3, y2, up, hi, pep;
  ;
  //PImage i1;

  // Constructor
  Info() {
    x = 50-16;
    y = 12;
    x2 = 100-16;
    x3 = width-32;
    y2 = 27;
    up = 0;
    hi = 28000;
    pep = 5;
  }

  // Member Methods

  void display() {
    textSize(16);
    noStroke();
    fill(255, 0, 0);
    textAlign(LEFT);
    text("1UP", x, y);
    text("HI-SCORE", x2, y);
    fill(255);
    text(up,x,y2);
    text(hi,x2,y2);
    fill(0, 255, 0);
    textAlign(RIGHT);
    textSize(12);
    text("PEPPER", x3, y);
    fill(255);
    text(pep,x3,y2);
  }

  void move() {
  }
}
