class Chef {
  // Member Variables
  int x, y, w, h, speed, move, animation,anim2;
  PImage p, p1, p2, pr1, pr2,pl1,pl2;

  // Constructor
  Chef() {
    x = 100;
    y = 224;
    w = 16;
    h = 16;
    p = loadImage("PeterPepper.png");
    p1 = loadImage("PeterPepper1.png");
    p2 = loadImage("PeterPepper2.png");
    pr1 = loadImage("PeterPepperRight1.png");
    pr2 = loadImage("PeterPepperRight2.png");
    pl1 = loadImage("PeterPepperLeft.png");
    pl2 = loadImage("PeterPepperLeft1.png");
    speed = 0;
    move = 0;
  }

  // Member Methods

  void display() {
    println(animation, anim2);
    imageMode(CORNER);
    if (keyPressed == true) {
      if (key == 'a' || key == 'A' || keyCode == LEFT) {
        speed = -1;
      }
    } else {
      speed = 0;
    }
    if (keyPressed == true) {
      if (key == 'd' || key == 'D' || keyCode == RIGHT) {
        speed = 1;
      }
    } else {
      speed = 0;
    }
    if (keyPressed == true) {
      if (key == 'd' || key == 'D' || keyCode == RIGHT) {
        animation = animation+1;
        anim2 = 0;
      }
      if (animation<10) {
        image(pr1, x, y);
      } else if (animation<20) {
      image(pr2,x,y);
      }
      if (animation>19) {
        animation = 0;
      }
    } 
    if (keyPressed == true) {
      if (key == 'a' || key == 'A' || keyCode == LEFT) {
        anim2 = anim2+1;
        animation = 0;
      }
      if (anim2<10) {
        image(pl1, x, y);
      } else if (animation<20) {
      image(pl2,x,y);
      }
      if (anim2>19) {
        anim2 = 0;
      }
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
        x = x+speed;
      }
    }
  }
}
