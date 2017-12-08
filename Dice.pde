Die[] dice;
int ygrid=0;
void setup() {
  size(300, 300);
  dice= new Die[9];
  int j = 0;
  int why = 0;
  while (j < 3) {
    int i = 0;
    while (i < 3) {
      dice[why] = new Die(i*100, j*100);
      why++;
      i++;
    }
    j++;
  }
  noLoop();
}

void draw() {
  //your code here
  for (int i = 0; i < dice.length; i++) {
    dice[i].roll();
    dice[i].show();
  }
}

void mousePressed() {
  redraw();
}

class Die { //models one single dice cube

  int x;
  int y;
  int size;
  int num;

  Die(int _x, int _y) { //constructor
    //variable initializations here
    x=_x;
    y=_y;
    size=100;
  }

  void roll() {
    num=(int)(Math.random()*6);
    //your code here
  }

  void show() {
    fill(255);
    rect(x, y, size, size);
    fill(0);
    if (num==0) {
      ellipse(x+size/2, y+size/2, size/3, size/3);
    }
    if (num==1) {
      ellipse(x+size/2+size/3, y+size/2+size/3, size/3, size/3);
      ellipse(x+size/2-size/3, y+size/2-size/3, size/3, size/3);
    }
    if (num==2) {
      ellipse(x+size/2, y+size/2, size/3, size/3);
      ellipse(x+size/2+size/3, y+size/2+size/3, size/3, size/3);
      ellipse(x+size/2-size/3, y+size/2-size/3, size/3, size/3);
    }
    if (num==3) {
      ellipse(x+size/2+size/3, y+size/2+size/3, size/3, size/3);
      ellipse(x+size/2-size/3, y+size/2-size/3, size/3, size/3);
      ellipse(x+size/2+size/3, y+size/2-size/3, size/3, size/3);
      ellipse(x+size/2-size/3, y+size/2+size/3, size/3, size/3);
    }
    if (num==4) {
      ellipse(x+size/2+size/3, y+size/2+size/3, size/3, size/3);
      ellipse(x+size/2-size/3, y+size/2-size/3, size/3, size/3);
      ellipse(x+size/2+size/3, y+size/2-size/3, size/3, size/3);
      ellipse(x+size/2-size/3, y+size/2+size/3, size/3, size/3);
      ellipse(x+size/2, y+size/2, size/3, size/3);
    }
    if (num==5) {
      ellipse(x+size/2+size/3, y+size/2+size/3, size/3, size/3);
      ellipse(x+size/2-size/3, y+size/2-size/3, size/3, size/3);
      ellipse(x+size/2+size/3, y+size/2-size/3, size/3, size/3);
      ellipse(x+size/2-size/3, y+size/2+size/3, size/3, size/3);
      ellipse(x+size/2+size/3, y+size/2, size/3, size/3);
      ellipse(x+size/2-size/3, y+size/2, size/3, size/3);
    }
  }
}
