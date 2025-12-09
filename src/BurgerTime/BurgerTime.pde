ArrayList<Ladder> ladders;
ArrayList<Ingredient> ingredients;
ArrayList<Enemy> enemies;
ArrayList<Floor> floors;
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
  ladders.add(new Ladder(1, height-47, 10));
  ladders.add(new Ladder(2, height-47, 10));
  ladders.add(new Ladder(3, height-47, 10));
  ladders.add(new Ladder(4, height-47, 10));
  ladders.add(new Ladder(5, height-47, 10));
  ladders.add(new Ladder(6, height-47, 10));
  ladders.add(new Ladder(7, height-47, 10));
  ladders.add(new Ladder(8, height-47, 10));
  ladders.add(new Ladder(9, height-47, 10));
  ingredients.add(new Ingredient(3, 200, 4));
  ingredients.add(new Ingredient(3, 191, 3));
  ingredients.add(new Ingredient(3, 182, 2));
  ingredients.add(new Ingredient(3, 173, 1));
  floors.add(new Floor(0, 1, 8, 1));
  enemies.add(new Enemy(100, 50, 16, 16, 1, 1));
  p1 = new Info();
  size(256, 240);
}

void draw() {
  c1.still = true;
  background(0);
  for (Ladder l : ladders) {
    l.display();
  }
  for (Floor f : floors) {
    f.display();
    f.collide();
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
  c1.display();
  p1.display();
  c1.move();
}
