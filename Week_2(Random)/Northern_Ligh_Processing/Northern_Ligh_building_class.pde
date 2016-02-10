nLight tri;

void setup() {
  size(900, 900);
  background(0);
  tri = new nLight(100, 100, 80, 10, 120, 200);
}

void draw() {
  tri.update();
  tri.moveIt();
}


