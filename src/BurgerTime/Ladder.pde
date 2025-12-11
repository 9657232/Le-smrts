class Chef {
  // Member Variables
  int x, y, w, h, xspeed, move, animation, anim2, yspeed;
  boolean still;
  float ladt, ladv;
  PImage p, p1, p2, pr1, pr2, pl1, pl2, pd1, pd2, pu1, pu2;

  // Constructor
  Chef() {
    x = width/2;
    y = 259;
    w = 16;
    h = 16;
    p = loadImage("PeterPepper.png");
    p1 = loadImage("PeterPepper1.png");
    p2 = loadImage("PeterPepper2.png");
    pr1 = loadImage("PeterPepperRight1.png");
    pr2 = loadImage("PeterPepperRight2.png");
    pl1 = loadImage("PeterPepperLeft.png");
    pl2 = loadImage("PeterPepperLeft1.png");
    pd1 = loadImage("PeterPepDown1.png");
    pd2 = loadImage("PeterPepDown2.png");
    pu1 = loadImage("PeterPepUp1.png");
    pu2 = loadImage("PeterPepUp2.png");
    xspeed = 0;
    move = 0;
  }

  // Member Methods

  void display() {
    imageMode(CENTER);
    if (keyPressed == true&&key == 'a' || key == 'A' || keyCode == LEFT) {
    } else if (keyPressed == true&&key == 'd' || key == 'D' || keyCode == RIGHT) {
    } else {
      xspeed = 0;
    }
    if (keyPressed == true) {
      if (key == 'w' || key == 'W' || keyCode == UP) {
        animation = 0;
        ladt = 0;
        if (ladv>=.1&&ladv<=.5) {
          image(pu2, x, y);
        } else if (ladv>.5 && ladv<1.1) {
          image(pu1, x, y);
        }
        if (ladv >=1) {
          ladv = 0;
        }
      }
    } else {
      yspeed = 0;
      ladv = 0;
    }
    if (keyPressed == true) {
      if (key == 's' || key == 'S' || keyCode == DOWN) {
        animation = 0;
        ladv = 0;
        if (ladt>.1 && ladt<.5) {
          image(pd1, x, y);
        } else if (ladt>=.5 && ladt<1.1) {
          image(pd2, x, y);
        }
        if (ladt >=1) {
          ladt = 0;
        }
      }
    } else {
      yspeed = 0;
      ladt = 0;
    }
    if (keyPressed == true) {
      if (key == 'd' || key == 'D' || keyCode == RIGHT) {
        anim2 = 0;
      }
      if (animation>0 && animation<=6) {
        image(pr1, x, y);
      } else if (animation>6 && animation<11) {
        image(pr2, x, y-2);
      }
      if (animation>=10) {
        animation = 1;
      }
    }
    if (keyPressed == true) {
      if (key == 'a' || key == 'A' || keyCode == LEFT) {
        animation = 0;
      }
      if (anim2>0 && anim2<=6) {
        image(pl1, x, y);
      } else if (anim2>6 && anim2<11) {
        image(pl2, x, y-2);
      }
      if (anim2>=10) {
        anim2 = 1;
      }
    }

    if (keyPressed == true&&still == true) {
      image(p, x, y);
      anim2 = 0;
      animation = 0;
      ladt = 0;
    }
    if (keyPressed == false) {
      image(p, x, y);
    }
  }


  void move() {
    if (keyPressed == true) {
      move = move+1;
      if (move>0) {
        move = 0;
        x = x+xspeed;
        y = y+yspeed;
        if (x > width-32) {
          x=width-32;
          anim2=0;
          animation=0;
        } else if (x < 32) {
          x = 32;
          anim2 = 0;
          animation = 0;
        }
      }
    }
  }
}
