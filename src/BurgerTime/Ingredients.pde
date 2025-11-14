class Ingredients {
  // Member Variables
  int x, y, w, h, speed,y1,y2,y3;
  PImage b1,b2,l1,be;

  // Constructor
  Ingredients() {
    x = 50;
    y = 135;
    y1 = 150;
    y2 = 165;
    y3 = 180;
    w = 48;
    h = 8;      //beef.png      burgertop.png    buttombun.png      letus.png
    b1 = loadImage("burgertop.png");
    b2 = loadImage("buttombun.png");
    l1 = loadImage("letus.png");
    be = loadImage("beef.png");
  }

  // Member Methods

  void display() {
    imageMode(CENTER);
    image(b1,x,y);
    image(b2,x,y3);
    image(l1,x,y1);
    image(be,x,y2);
  }

  void move() {
  }
}
