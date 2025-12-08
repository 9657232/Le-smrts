class Ingredient {
  // Member Variables
  int x, x1, x2, x3, y, w, h, speed, xtype, type, xx, m, m1, m2, m3, timer;
  boolean f1, f2, f3, f4;
  PImage i, i1, i2, i3;

  // Constructor
  Ingredient(int xtype, int y, int type) {

    this.xtype = xtype;
    this.y = y;
    this.type = type;
    x = 52;
    x1 = 104;
    x2 = 156;
    x3 = 208;
    m = y;
    m1 = y;
    m2 = y;
    m3 = y;
    f1 = false;
    f2 = false;
    f3 = false;
    f4 = false;
    timer = 0;
    if (xtype == 1) {
      xx = x;
    } else if (xtype == 2) {
      xx = x1;
    } else if (xtype == 3) {
      xx = x2;
    } else if (xtype == 4) {
      xx = x3;
    }
    if (type == 1) {
      i = loadImage("burgertop1.png");
      i1 = loadImage("burgertop2.png");
      i2 = loadImage("burgertop3.png");
      i3 = loadImage("burgertop4.png");
    } else if (type == 2) {
      i = loadImage("beef1.png");
      i1 = loadImage("beef2.png");
      i2 = loadImage("beef3.png");
      i3 = loadImage("beef4.png");
    } else if (type == 3) {
      i = loadImage("letus1.png");
      i1 = loadImage("letus2.png");
      i2 = loadImage("letus3.png");
      i3 = loadImage("letus4.png");
    } else if (type == 4) {
      i = loadImage("buttombun1.png");
      i1 = loadImage("buttombun2.png");
      i2 = loadImage("buttombun3.png");
      i3 = loadImage("buttombun4.png");
    } else if (type>=5) {
      i = loadImage("thisimagewillneverbeseen.png");
      i1 = loadImage("thisimagewillneverbeseen.png");
      i2 = loadImage("thisimagewillneverbeseen.png");
      i3 = loadImage("thisimagewillneverbeseen.png");
    }
  }

  // Member Methods

  void display() {
    imageMode(CENTER);
    image(i, xx-18, m);
    image(i1, xx-6, m1);
    image(i2, xx+6, m2);
    image(i3, xx+18, m3);
  }

  void move() {
    if (c1.x>=xx-26&&c1.x<=xx-10&&c1.y<=y&&c1.y>=y-20&&f1 == false) {
      m = y+3;
      f1 = true;
    }
    if (c1.x>=xx-14&&c1.x<=xx+2&&c1.y<=y&&c1.y>=y-20&&f2 == false) {
      m1 = y+3;
      f2 = true;
    }
    if (c1.x>=xx-2&&c1.x<=xx+14&&c1.y<=y&&c1.y>=y-20&&f3 == false) {
      m2 = y+3;
      f3 = true;
    }
    if (c1.x>=xx+10&&c1.x<=xx+26&&c1.y<=y&&c1.y>=y-20&&f4 == false) {
      f4 = true;
      m3 = y+3;
    }
    if (f1 == true&&f2 == true&&f3 == true&&f4 == true) {
      m = m+1;
      m1 = m1+1;
      m2 = m2+1;
      m3 = m3+1;
    }
     if (f1 == true&&f2 == true&&f3 == true&&f4 == true&&timer>-1) {
     timer = 1;
     }
    if (timer==1) {
    m = m-3;
    m3 = m3-3;
    timer = -1;
    }
  }
}
