//class constructor

class nLight {

  float x1, y1, x2, y2, x3, y3, side1, side2, side3; //declare all the var

  nLight (float _x1, float _y1, float _x2, float _y2, float _x3, float _y3) {
    side1 = dist(x1, y1, 10, 30);
    side2 = dist(x2, y2, 10, 30);
    side3 = dist(x3, y3, 10, 30);
  }

  void moveIt() {
    float pulse = dist(x1, y1, x2, y2);
    float stretch = 0.05;

    if (dist(mouseX, mouseY, x1, y1)>=10) {  //values between 10 and 25
      x1 = ((mouseX - x1) * stretch + x1) + random(-20, 60);
      y1 = ((mouseY - y1) * stretch + y1 + random(-60, 20));
    }
    if (dist(mouseX, mouseY, x2, y2)>=25) {  //values between 25 and 100
      x2 = ((mouseX - x2) * stretch + x2) + random(-40, 40);
      y2 = ((mouseY - y2) * stretch + y2) + random(-20, 50);
    }
    if (dist(mouseX, mouseY, x3, y3)>=100) {  //value over 100
      x3 = ((mouseX - x3) * stretch + x3)+ random(-20, 20);
      y3 = ((mouseY - y3) * stretch + y3)+ random(-20, 20);
      fill(255, (255 + (dist(mouseX, mouseY, y2, x2))), 75, random(1, 10)); //fill(v1, v2, v3, alpha) alpha-is the opasity of the fill
    }

    if (keyPressed) {
      if (key == 'c'|| key == 'C') {
        fill(222, (1 + (dist(mouseX, mouseY, y2, x2)-150)), 189, random(1, 10));
      }
    }
  }

  void update() {
    triangle(x1, y1, x2, y2, x3, y3);
    noStroke();
  }
}

