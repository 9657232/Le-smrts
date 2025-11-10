class Chef {
  // Member Variables
  int x, y, w, h, speed;
  //PImage i1;

  // Constructor
  Chef() {
    x = 100;
    y = 30;
    w = 16;
    h = 32;
  }

  // Member Methods

  void display() {
    noStroke();
    fill(#DEDEDE);
    //image(i1,x,y);
    rectMode(CENTER);
    rect(x,y,w,h);
  }

  void move() {
  }
}
