class Info {
  // Member Variables
  int x, y, x2, x3, y2, up, hi, pep, transition;
  PImage s, c;
  boolean start, choose1, choose2;

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
    choose1 = true;
    choose2 = false;
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
    imageMode(CORNER);
    if (start == false) {
      image(s, 0, 0);
      textAlign(CENTER);
      textSize(25);
      text("ENTER TO START", width/2, height-150);
      text("1 Player", width/2, height-100);
      text("2 Player(not ready)", width/2, height-50);
      if (key == 'w'||key == 'W'||keyCode == UP) {
        choose1 = true;
        choose2 = false;
      } else if (key == 'S'||key=='s'||keyCode==DOWN) {
        choose1 = false;
        choose2 = true;
      }
      if (choose2 == true) {
        image(c, 25, height-75);
      } else if (choose1 == true) {
        image(c, 90, height-125);
      }
      if (keyCode == 10) {
        start = true;
      }
    }
  }
}
