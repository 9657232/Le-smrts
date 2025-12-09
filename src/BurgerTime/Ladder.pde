class Ladder {
  int x, y, c, a, xtype;
  PImage lad, p;

  // Constructor
  Ladder(int xtype, int y, int c) {
    this.xtype = xtype;
    this.y = y;
    this.c = c;
    lad = loadImage("ladd.png");
    p = loadImage("PeterPepper.png");
    x = (xtype*22)+18;
  }
  void display() {
    println(c1.yspeed);
    if (c1.x<=x+8 && c1.x>=x-8&&c1.y>y-(c*15)&&c1.y<y+8) {
      if (key == 'w' || key == 'W' || keyCode == UP) {
        c1.still = false;
        c1.ladv = c1.ladv+.1;
        c1.yspeed = -1;
        c1.x = x;
        if (c1.ladv>=.0&&c1.ladv<=.5) {
          image(c1.pu2, c1.x, c1.y);
        }
      }
    } else {
    }
    if (c1.x<=x+8 && c1.x>=x-8&&c1.y<y-1&&c1.y>(y-8)-(c*15)) {
      if (key == 's' || key == 'S' || keyCode == DOWN) {
        c1.still = false;
        c1.ladt = c1.ladt+.1;
        c1.yspeed = 1;
        c1.x = x;
        if (c1.ladt>.0 && c1.ladt<.5) {
          image(c1.pd1, c1.x, c1.y);
        }
      } else {
      }
    }
    imageMode(CENTER);
    lad.resize(12,15);
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
    if (c1.y<=y-(c*15) && c1.yspeed==-1 && c1.x<=x+8 && c1.x>=x-8) {
      c1.yspeed = 0;
    }

    if (c1.y>=y-1 && c1.yspeed==1 && c1.x<=x+8 && c1.x>=x-8) {
      c1.yspeed = 0;
    }
  }
}
