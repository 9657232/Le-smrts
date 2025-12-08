class Enemy {
  // Member Variables
  int x, y, w, h, xspeed, yspeed, speed, type;
  PImage enem1;

  // Constructor
  Enemy(int x, int y, int w, int h, int speed, type) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
    this.type = type;
    //if(type == '1') {
    //enem1 = loadImage("");
    //} else if(type == '2') {
    //enem1 = loadImage("");
    //} else if(type == '3') {
    //enem1 = loadImage("");
    //} else if(type == '4') {
    //enem1 = loadImage("");
    //}
  }

  // Member Methods

  void display() {
    noStroke();
    fill(255,0,0);
    //image(enem1,x,y);
    rectMode(CENTER);
    rect(x,y,w,h);
  }
void find() {
if(c1.x>x) {
xspeed = speed;
} else if (c1.x<x) {
xspeed = -speed;
} else if (c1.x == x) {
xspeed = 0;
}
}
  void move() {
x = x+xspeed;
y = y+yspeed;
  }
}
