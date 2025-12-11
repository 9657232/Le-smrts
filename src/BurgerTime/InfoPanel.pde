class Info {
  // Member Variables
  int x, y, x2, x3, y2, up, hi, pep, transition, ch = 1;
  PImage s, c;
  boolean start, uselesss, start2, password;

  // Constructor
  Info() {
    x = 50-16;
    y = 12;
    x2 = 100-16;
    x3 = width-32;
    y2 = 27;
    up = 0;
    hi = 28000;
    pep = 5;
    start = false;
    s = loadImage("Placeholder.png");
    c = loadImage("2ndPlaceHolder.png");
    ch = 0;
  }

  // Member Methods

  void display() {
    textSize(16);
    noStroke();
    fill(255, 0, 0);
    textAlign(LEFT);
    text("1UP", x, y);
    text("HI-SCORE", x2, y);
    fill(255);
    text(up, x, y2);
    text(hi, x2, y2);
    fill(0, 255, 0);
    textAlign(RIGHT);
    textSize(12);
    text("PEPPER", x3, y);
    fill(255);
    text(pep, x3, y2);
    fill(#FFFF00);
    textSize(16);
    textAlign(LEFT);
    text("FRAMERATE", 175, y);
    fill(255);
    if (fr/10>16) {
      textSize(fr/10);
    }
    text(fr, 175, y2);
  }

  void screen() {
    if (uselesss == false) {
      ch = 1;
      uselesss = true;
    }
    if (ch==0) {
      ch=3;
    }
    if (ch==4) {
      ch =1;
    }
    imageMode(CORNER);
    if (start == false&&start2 == false&& password == false) {
      image(s, 0, 0);
      textAlign(CENTER);
      textSize(25);
      text("ENTER TO START", width/2, height-175);
      text("1 PLAYER", width/2, height-125);
      text("2 PLAYER(NOT READY)", width/2, height-75);
      text("INPUT PASSWORD", width/2, height-25);
      if (ch == 1) {
        image(c, 90, height-150);
      } else if (ch == 2) {
        image(c, 15, height-100);
      } else if (ch == 3) {
        image(c, 35, height-50);
      }
      if (keyCode == 10&&ch == 1) {
        start = true;
      } else if (keyCode == 10&&ch == 2) {
        start2 = true;
      } else if (keyCode == 10&&ch == 3) {
        password = true;
      }
    } else {
    ch = -1;
    }
    //if(password == true) {
    //ch = -1;
    //fill(0);
    //rect(width,height,0,0);
    //}
  }
}
