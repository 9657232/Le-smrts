class Ladder {
  // Member Variables
  int x, y, w, h;
  //PImage i1;

  // Constructor
  Ladder() {
    x = 200;
    y = 40;
    w = 12;
    h = 64;
  }

  // Member Methods

  void display() {
    noStroke();
    fill(255);
    //image(i1,x,y);
    rectMode(CENTER);
    rect(x,y,w,h);
  }

  void move() {
  }
}
