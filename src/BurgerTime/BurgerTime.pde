//ArrayList<Enemy> enemies;
//ArrayList<Floor> floors;
int fr, ia = 16, ea=1, la=11, fa=10, level = 1, world=1, counter, dTimer, lives, score;
boolean dying, endlooper;
PImage p;
Floor[] floors = new Floor[fa];
Enemy[] enemies = new Enemy[ea];
Ingredient[] ingredients = new Ingredient[ia];
Ladder[] ladders = new Ladder[la];
Ingredient i1;
Chef c1;
Enemy e1;
Ladder l1;
Info p1;
Floor f1;

void setup() {
  lives = 5;
  p = loadImage("PeterPepper.png");
  c1 = new Chef();
  //ladders = new ArrayList<Ladder>();
  //ingredients = new ArrayList<Ingredient>();
  //floors = new ArrayList<Floor>();
  //enemies = new ArrayList<Enemy>();
  if (level == 1) {
    ladders[0] = new Ladder(0, 7, 5);
    ladders[1] = new Ladder(1, 9, 5);
    ladders[2] = new Ladder(0, 14, 2);
    ladders[3] = new Ladder(2, 7, 9);
    ladders[4] = new Ladder(3, 13, 3);
    ladders[5] = new Ladder(4, 7, 9);
    ladders[6] = new Ladder(5, 11, 3);
    ladders[7] = new Ladder(6, 7, 9);
    ladders[8] = new Ladder(7, 7, 5);
    ladders[9] = new Ladder(8, 7, 3);
    ladders[10] = new Ladder(8, 12, 4);
    ingredients[0] = new Ingredient(1, 6, 4, 6);
    ingredients[1] = new Ingredient(1, 8, 3, 6);
    ingredients[2] = new Ingredient(1, 11, 2, 6);
    ingredients[3] = new Ingredient(1, 13, 1, 6);
    ingredients[4] = new Ingredient(2, 6, 4, 6);
    ingredients[5] = new Ingredient(2, 8, 3, 6);
    ingredients[6] = new Ingredient(2, 10, 2, 6);
    ingredients[7] = new Ingredient(2, 15, 1, 6);
    ingredients[8] = new Ingredient(3, 6, 4, 6);
    ingredients[9] = new Ingredient(3, 10, 3, 6);
    ingredients[10] = new Ingredient(3, 13, 2, 6);
    ingredients[11] = new Ingredient(3, 15, 1, 6);
    ingredients[12] = new Ingredient(4, 9, 4, 6);
    ingredients[15] = new Ingredient(4, 11, 3, 6);
    ingredients[14] = new Ingredient(4, 13, 2, 6);
    ingredients[13] = new Ingredient(4, 15, 1, 6);
    floors[0] = new Floor(0, 6, 4);
    floors[1] = new Floor(0, 8, 3);
    floors[2] = new Floor(3, 9, 1);
    floors[3] = new Floor(1, 10, 2);
    floors[4] = new Floor(0, 11, 1);
    floors[5] = new Floor(3, 11, 1);
    floors[6] = new Floor(1, 12, 1);
    floors[7] = new Floor(0, 13, 1);
    floors[8] = new Floor(2, 13, 2);
    floors[9] = new Floor(0, 15, 4);
    enemies[0] = new Enemy(0, (height-8)-(15*16), 16, 16, 1, 1);
  }
  p1 = new Info();
  size(336, 315);
  fr = 60;
}
void keyReleased() {
  if (p1.password == true&&p1.start == true&&key != BACKSPACE&&key != 10&&key != 16&&key!= 18&&key!= 17&&key!= 9&&key!= ' ') {
    p1.cube++;
    p1.enterpass = 0;
  }
  if (p1.start == true&&p1.G4M3D3V == true) {
    if (key == 'p'||key == 'P') {
      fr = fr+5;
    } else if (key == 'o'||key == 'O') {
      fr = fr-5;
    }
  }
  if (p1.password == false) {
    if (key == 'w'||key == 'W'||keyCode == UP) {
      p1.ch=p1.ch-1;
    } else if (key == 'S'||key=='s'||keyCode==DOWN) {
      p1.ch=p1.ch+1;
    }
  }
}

void draw() {
score = counter*50;
  if (counter>=16) {
    level++;
    counter=0;
  }
  println(dTimer);
  //println(world+"-"+level);
  if (level>=6) {
    level = 1;
    world++;
    counter=0;
  }
  if (fr<30) {
    fr = 30;
  }
  if (fr>200) {
    fr = 200;
  }
  frameRate(fr);
  if (p1.start == true&&p1.password == false&&dying == false) {
    c1.still = true;
    background(0);
    for (Ladder l : ladders) {
      l.display();
    }
    for (Floor f : floors) {
      f.display();
    }
    for (Ingredient i : ingredients) {
      i.display();
      if (dying == false) {
        i.move();
      }
    }
    for (Enemy e : enemies) {
      if (dying == false) {
        e.find();
        e.move();
        e.killEmAll();
        e.display();
      }
    }

    for (Floor f : floors) {
      f.collide();
    }
    c1.display();
    p1.display();
    if (dying == false) {
      c1.move();
    }
  }
  p1.screen();
  if (c1.bigdead == true) {
    dTimer++;
    dying = true;
  }
  if (dTimer>=120) {
    rectMode(CORNER);
    fill(0);
    rect(0, 0, width, height);
    textSize(25);
    fill(255);
    textAlign(LEFT);
    image(p, c1.x, c1.y);
    text("x "+lives, c1.x+25, c1.y+12);
  }
    if (dTimer>=300) {
    dTimer = 0;
    c1.bigdead = false;
    dying = false; 
    endlooper = false;
  }
  if(endlooper == false&&dying == true) {
    lives--;
    endlooper = true;
  }
}
void keyTyped() {
  p1.keyTyped();
}
