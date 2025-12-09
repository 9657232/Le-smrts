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
  ladders.add(new Ladder(3, 3, 10));
  ladders.add(new Ladder(5, 3, 10));
  ladders.add(new Ladder(7, 3, 9));
  ingredients.add(new Ingredient(1, 5, 4));
  ingredients.add(new Ingredient(2, 5, 3));
  ingredients.add(new Ingredient(3, 5, 2));
  ingredients.add(new Ingredient(4, 5, 1));
  floors.add(new Floor(0, 3, 8, 1));
  floors.add(new Floor(0, 6, 6, 1));
  floors.add(new Floor(0, 9, 2, 1));
  floors.add(new Floor(0, 11, 2, 1));
  floors.add(new Floor(0, 12, 8, 1));
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
