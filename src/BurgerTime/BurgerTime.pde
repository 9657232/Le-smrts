Ingredients i1;
Chef c1;
Enemy e1;
Ladder l1;
Info p1;

void setup() {
  i1 = new Ingredients();
  c1 = new Chef();
  e1 = new Enemy();
  l1 = new Ladder();
  p1 = new Info();
  size(256,240);

}

void draw() {
background(0);
i1.display();
c1.display();
e1.display();
l1.display();
p1.display();
c1.move();
}
