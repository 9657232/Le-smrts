ArrayList<Ladder> ladders;
ArrayList<Ingredient> ingredients;
ArrayList<Floor> floors;
Ingredient i1;
Chef c1;
Enemy e1;
Ladder l1;
Info p1;
Floor f1;

void setup() {
  c1 = new Chef();
  e1 = new Enemy();
  ladders = new ArrayList<Ladder>();
  ingredients = new ArrayList<Ingredient>();
  floors = new ArrayList<Floor>();
  ladders.add(new Ladder(200, height-10, 16, 15, 8, height-5, 120));
  ladders.add(new Ladder(100, height-10, 16, 15, 4, height-5, 180));
  ladders.add(new Ladder(150, 180-10, 16, 15, 4, 180-5, 120));
  ingredients.add(new Ingredient(3, 200,4));
  ingredients.add(new Ingredient(3, 191,3));
  ingredients.add(new Ingredient(3, 182,2));
  ingredients.add(new Ingredient(3, 173,1));
  floors.add(new Floor(0,1,100,1));
  p1 = new Info();
  size(256, 240);
}

void draw() {
  c1.still = true;
  background(0);
  for (Ladder l : ladders) {
    l.display();
  }
  for (Ingredient i : ingredients) {
    i.display();
    i.move();
  }
  for (Floor f : floors) {
  f.display();
  f.collision();
  }
  c1.display();
  e1.display();
  p1.display();
  c1.move();
}
