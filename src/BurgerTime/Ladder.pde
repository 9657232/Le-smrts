class Ladder {
  int x, y, w, h, c, up, down;
  PImage lad;

  // Constructor
  Ladder(int x, int y, int w, int h, int c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    lad = loadImage("ladd.png");
  }

  void display() {
    if (c1.x<=x+8 && c1.x>=x-8) {
      up = 1;
    }
    if (c1.x<=x+8 && c1.x>=x-8) {
      if (key == 'w' || key == 'W' || keyCode == UP ) {
        c1.yspeed = -1;
        c1.x = x;
        up = 1;
      } else {
        up = 0;
      }
      if (c1.x<=x+8 && c1.x>=x-8) {
        if (key == 's' || key == 'S' || keyCode == DOWN) {
          c1.yspeed = 1;
          c1.x = x;
          down = 1;
        } else {
          down = 0;
        }
      }
    }
    imageMode(CENTER);
    lad.resize(w, h);
    if (c == 1) {
      image(lad, x, y);
    } else if (c == 2) {
      image(lad, x, y);
      image(lad, x, y-15);
    } else if (c == 3) {
      image(lad, x, y);
      image(lad, x, y-15);
      image(lad, x, y-30);
    } else if (c == 4) {
      image(lad, x, y);
      image(lad, x, y-15);
      image(lad, x, y-30);
      image(lad, x, y-45);
    } else if (c == 5) {
      image(lad, x, y);
      image(lad, x, y-15);
      image(lad, x, y-30);
      image(lad, x, y-45);
      image(lad, x, y-60);
    } else if (c == 6) {
      image(lad, x, y);
      image(lad, x, y-15);
      image(lad, x, y-30);
      image(lad, x, y-45);
      image(lad, x, y-60);
      image(lad, x, y-75);
    } else if (c == 7) {
      image(lad, x, y);
      image(lad, x, y-15);
      image(lad, x, y-30);
      image(lad, x, y-45);
      image(lad, x, y-60);
      image(lad, x, y-75);
      image(lad, x, y-90);
    } else if (c == 8) {
      image(lad, x, y);
      image(lad, x, y-15);
      image(lad, x, y-30);
      image(lad, x, y-45);
      image(lad, x, y-60);
      image(lad, x, y-75);
      image(lad, x, y-90);
      image(lad, x, y-105);
    } else if (c == 9) {
      image(lad, x, y);
      image(lad, x, y-15);
      image(lad, x, y-30);
      image(lad, x, y-45);
      image(lad, x, y-60);
      image(lad, x, y-75);
      image(lad, x, y-90);
      image(lad, x, y-105);
      image(lad, x, y-120);
    } else if (c == 10) {
      image(lad, x, y);
      image(lad, x, y-15);
      image(lad, x, y-30);
      image(lad, x, y-45);
      image(lad, x, y-60);
      image(lad, x, y-75);
      image(lad, x, y-90);
      image(lad, x, y-105);
      image(lad, x, y-120);
      image(lad, x, y-135);
    } else if (c == 11) {
      image(lad, x, y);
      image(lad, x, y-15);
      image(lad, x, y-30);
      image(lad, x, y-45);
      image(lad, x, y-60);
      image(lad, x, y-75);
      image(lad, x, y-90);
      image(lad, x, y-105);
      image(lad, x, y-120);
      image(lad, x, y-135);
      image(lad, x, y-150);
    }
  }
}
