class Floor {
  int x, y, w, h, yType, ctype;
  color c1;
  boolean onLadder, offLadder;

  Floor(int x, int yType, int w, int ctype) {
    this.x = x;
    this.yType = yType;
    this.w = w;
    this.ctype = ctype;
    h = 2;
    if (ctype == 1) {
      c1 = #0041FF;
    } else if (ctype == 2) {
      c1 = #3BEAFF;
    }
    if (yType == 1) {
      y = 200;
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
  void display() {
    rectMode(CORNER);
    fill(c1);
    rect(x, y, w, h);
  }
  void collision() {
if(keyPressed == true) {
  if (c1.y>=y-4&&c1.y<=y-20&&c1.x>=x+8&&c1.x<=w-8&&key == 'a'||key == 'd') {
     c1.y = y-9;
      }
    }
  }
}
