class Enemy {
  // Member Variables
  int x, y, w, h, speed;
  //PImage i1;

  // Constructor
  Enemy() {
    x = 150;
    y = 30;
    w = 16;
    h = 16;
  }

  // Member Methods

  void display() {
    noStroke();
    fill(#DE0B12);
    //image(i1,x,y);
    rectMode(CENTER);
    rect(x,y,w,h);
  }

  void move() {
  }
}
