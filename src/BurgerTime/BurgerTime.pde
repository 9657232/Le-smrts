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
  ladders.add(new Ladder(0, 4, 2));
  ingredients.add(new Ingredient(1, 3, 4));
  floors.add(new Floor(0, 3, 4));
  floors.add(new Floor(0, 5, 4));
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
}

void draw() {
  if(fr<30){
  fr = 30;
  }
  if(fr>200) {
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
