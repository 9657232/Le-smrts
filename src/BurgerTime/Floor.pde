class Floor {
  int x, y, w, h, yType, ctype, wtype, xtype;
  color co1;
  boolean onLadder, offLadder;

  Floor(int xtype, int yType, int wtype, int ctype) {
    this.xtype = xtype;
    this.yType = yType;
    this.wtype = wtype;
    this.ctype = ctype;
    w = (wtype*22)+21;
    x = (xtype*22)+29;
    h = 2;
    if (ctype == 1) {
      co1 = #0041FF;
    } else if (ctype == 2) {
      co1 = #3BEAFF;
    }
    if (yType == 1) {
      y = 200;
    } else if (yType == 2) {
      y = 184;
    } else if (yType == 3) {
      y = 168;
    } else if (yType == 4) {
      y = 152;
    } else if (yType == 5) {
      y = 136;
    } else if (yType == 6) {
      y = 120;
    } else if (yType == 7) {
      y = 104;
    } else if (yType == 8) {
      y = 88;
    } else if (yType == 9) {
      y = 72;
    } else if (yType == 10) {
      y = 56;
    } else if (yType == 11) {
      y = 40;
    } else if (yType == 12) {
      y = 24;
    }
  }
  void collide() {
    if (keyPressed == true&&c1.y<=y-6&&c1.y>=y-10&&c1.x>=x+8&&c1.x<=(w+x)+8&&key=='d'||key == 'D'||keyCode == RIGHT) {
      c1.animation = c1.animation+1;
      c1.xspeed = 1;
      c1.still = false;
      c1.y = y-8;
    }
    if (keyPressed == true&&c1.y<=y-6&&c1.y>=y-10&&c1.x>=x+8&&c1.x<=(w+x)+8&&key=='a'||key == 'A'||keyCode == LEFT) {
      c1.anim2 = c1.anim2+1;
      c1.xspeed = -1;
      c1.still = false;
      c1.y = y-8;
    }
    if(c1.x<=x+8&& c1.xspeed == -1) {
    c1.x = x+8;
          image(c1.p, c1.x, c1.y);
    c1.still = false;
    c1.anim2 = 0;
    } else if(c1.x>=w+x-8&&c1.xspeed ==1&&c1.y<=y&&c1.y>=y-12) {
            image(c1.p, c1.x, c1.y);
      c1.animation = 0;
      c1.still = false;
    c1.x = w+x-8;
    }
  }
  void display() {
    rectMode(CORNER);
    fill(co1);
    rect(x, y, w, h);
    if (wtype>=0) {
      fill(#3BEAFF);
      rect(x, y, 22, h);
    }
    if (wtype>=2) {
      fill(#3BEAFF);
      rect(x+44, y, 22, h);
    }
    if (wtype>=4) {
      fill(#3BEAFF);
      rect(x+44*2, y, 22, h);
    }
    if (wtype>=6) {
      fill(#3BEAFF);
      rect(x+44*3, y, 22, h);
    }
    if (wtype>=8) {
      fill(#3BEAFF);
      rect(x+44*4, y, 22, h);
    }
  }
}
