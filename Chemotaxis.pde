class Bacteria {
  int x, y, Color1, Color2, Color3;

  Bacteria(int startX, int startY) {
    x = startX;
    y = startY;
    Color1 = 255;
    Color2 = (int)(Math.random() * 255);
    Color3 = (int)(Math.random() * 1);
  }

  void movement() {
    x += (int)(Math.random() * 9.5) ;
    y -= (int)(Math.random() * 6 - 1) ;
  }

  void show() {
    fill(Color1, Color2, Color3);
    ellipse(x, y, 10, 10);
  }
}

Bacteria[] names = new Bacteria[10000];
int bacteriaCount = 0;
boolean isMousePressed = false;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(50);
  //Initializes bacteria when mouse pressed
  // Spawn new bacteria while the mouse is pressed
  if (isMousePressed && bacteriaCount < names.length) {
    names[bacteriaCount] = new Bacteria(mouseX, mouseY);
    bacteriaCount++;
  }
  
  for (int i = 0; i < bacteriaCount; i++) {
    names[i].movement();
    names[i].show();
  }
}

void mousePressed() {
  isMousePressed = true;
}

void mouseReleased() {
  isMousePressed = false;
}
