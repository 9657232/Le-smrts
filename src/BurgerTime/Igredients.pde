class Ingredients {
  // Member Variables
  int x, y, w, h, speed;
  //PImage i1;

  // Constructor
  Ingredients() {
    x = 50;
    y = 30;
    w = 48;
    h = 8;
  }

  // Member Methods

  void display() {
    noStroke();
    fill(#DB6E00);
    //image(i1,x,y);
    rectMode(CENTER);
    rect(x,y,w,h);
  }

  void move() {
  }
}
