class Enemy {
  // path finding influenced heavily
  boolean onFloor() {
    int z;
    for (Floor f : floors) {
      if (y <= f.y && y >= f.y - 12 &&
        x >= f.x && x <= f.x + f.w) {
        y = f.y - 8;
        return true;
      }
    }
    return false;
  }

  Ladder getNearbyLadder() {
    for (Ladder l : ladders) {
      if (abs(x - l.x) <= 8 &&
        y <= l.y && y >= l.y - (l.c * 16)) {
        return l;
      }
    }
    return null;
  }

  int x, y, w, h, xspeed, yspeed, speed, type, z, idk;
  PImage enem1;

  // Constructor
  Enemy(int x, int y, int w, int h, int type, int speed) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
    this.type = type;
    if (type == '1') {
      enem1 = loadImage("");
    } else if (type == '2') {
      enem1 = loadImage("");
    } else if (type == '3') {
      enem1 = loadImage("");
    } else if (type == '4') {
      enem1 = loadImage("");
    }
  }

  // Member Methods

  void display() {
    noStroke();
    fill(255, 0, 0);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
  void find() {
    xspeed = 0;
    yspeed = 0;

    if (abs(y - c1.y) < 8 && onFloor()) {
      if (c1.x > x) xspeed = speed;
      else if (c1.x < x) xspeed = -speed;
      return;
    }

    Ladder l = getNearbyLadder();
    if (l != null) {
      x = l.x;

      if (c1.y < y) {
        yspeed = -speed;
      } else if (c1.y > y) {
        yspeed = speed;
      }
      return;
    }

    if (c1.x > x) xspeed = speed;
    else xspeed = -speed;
  }


  void move() {
    x += xspeed;
    y += yspeed;
    for (z = 0; z<ingredients.length; z++) {
      if (x>=ingredients[z].xx-18&&x<=ingredients[z].xx+18&&ingredients[z].f == true&&ingredients[z].f2 == true&&ingredients[z].f3 == true&&ingredients[z].f4 == true&&y>=ingredients[z].y-12&&y<=ingredients[z].y+4) {
        ingredients[z].f = true;
        ingredients[z].f2 = true;
        ingredients[z].f3 = true;
        ingredients[z].f4 = true;
        xspeed = 0;
      }
    }
  }
  void killEmAll() {
    if (c1.y<=y+8&&c1.y>=y-8&&c1.x>=x-8&&c1.x<=x+8) {
      c1.bigdead = true;
    }
  }
}
