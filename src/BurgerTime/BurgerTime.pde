ArrayList<Ladder> ladders;
ArrayList<Ingredient> ingredients;
ArrayList<Enemy> enemies;
ArrayList<Floor> floors;
int fr;
Ingredient i1;
Chef c1;
Enemy e1;
Ladder l1;
Info p1;
Floor f1;

void setup() {
  c1 = new Chef();
  ladders = new ArrayList<Ladder>();
  ingredients = new ArrayList<Ingredient>();
  floors = new ArrayList<Floor>();
  enemies = new ArrayList<Enemy>();
  ladders.add(new Ladder(0, 4, 5));
  ladders.add(new Ladder(1, 6, 5));
  ladders.add(new Ladder(0, 11, 2));
  ladders.add(new Ladder(2, 4, 9));
  ladders.add(new Ladder(3, 10, 3));
  ladders.add(new Ladder(4, 4, 9));
  ladders.add(new Ladder(5, 8, 3));
  ladders.add(new Ladder(6, 4, 9));
  ladders.add(new Ladder(7, 4, 5));
  ladders.add(new Ladder(8, 4, 3));
  ladders.add(new Ladder(8, 9, 4));
  ingredients.add(new Ingredient(1, 3, 4));
  ingredients.add(new Ingredient(2, 3, 4));
  ingredients.add(new Ingredient(3, 3, 4));
  ingredients.add(new Ingredient(1, 5, 2));
  ingredients.add(new Ingredient(2, 5, 2));
  ingredients.add(new Ingredient(4, 6, 4));
  ingredients.add(new Ingredient(2, 7, 3));
  ingredients.add(new Ingredient(3, 7, 2));
  ingredients.add(new Ingredient(1, 8, 3));
  ingredients.add(new Ingredient(4, 8, 2));
  ingredients.add(new Ingredient(1, 10, 1));
  ingredients.add(new Ingredient(3, 10, 3));
  ingredients.add(new Ingredient(4, 10, 3));
  ingredients.add(new Ingredient(2, 12, 1));
  ingredients.add(new Ingredient(3, 12, 1));
  ingredients.add(new Ingredient(4, 12, 1));
  floors.add(new Floor(0, 3, 4));
  floors.add(new Floor(0, 5, 3));
  floors.add(new Floor(3, 6, 1));
  floors.add(new Floor(0, 3, 4));
  floors.add(new Floor(1, 7, 2));
  floors.add(new Floor(0, 8, 1));
  floors.add(new Floor(3, 8, 1));
  floors.add(new Floor(1, 9, 1));
  floors.add(new Floor(0, 10, 1));
  floors.add(new Floor(2, 10, 2));
  floors.add(new Floor(0, 12, 4));
  enemies.add(new Enemy(100, 50, 16, 16, 1, 1));
  p1 = new Info();
  size(336, 315);
  fr = 60;
}
void keyReleased() {
  if (key == 'p'||key == 'P') {
    fr = fr+5;
  } else if (key == 'o'||key == 'O') {
    fr = fr-5;
  }
  if (key == 'w'||key == 'W'||keyCode == UP) {
    p1.ch=p1.ch-1;
  } else if (key == 'S'||key=='s'||keyCode==DOWN) {
    p1.ch=p1.ch+1;
  }
}

void draw() {
  if (fr<30) {
    fr = 30;
  }
  if (fr>200) {
    fr = 200;
  }
  frameRate(fr);
  if (p1.start == true) {
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
      i.move();
    }
    for (Enemy e : enemies) {
      e.display();
      e.move();
      e.find();
    }
    for (Floor f : floors) {
      f.collide();
    }
    c1.display();
    p1.display();
    c1.move();
  }
  p1.screen();
}
