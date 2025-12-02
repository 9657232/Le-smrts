ArrayList<Ladder> ladders;
Ingredients i1;
Chef c1;
Enemy e1;
Ladder l1;
Info p1;

void setup() {
  i1 = new Ingredients();
  c1 = new Chef();
  e1 = new Enemy();
  ladders = new ArrayList<Ladder>();
  ladders.add(new Ladder(width/2, height-10, 16, 15,8));
  ladders.add(new Ladder(40, height-10, 16, 15,11));
  p1 = new Info();
  size(256, 240);
}

void draw() {
  background(0);
  for (Ladder l : ladders) {
    l.display();
  }
  i1.display();
  c1.display();
  e1.display();
  p1.display();
  c1.move();
}
