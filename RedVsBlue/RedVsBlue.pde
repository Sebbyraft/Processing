Player left;
Player right;
int leftScore = 0;
int rightScore = 0;
boolean restart = false;
int victory = 5;
boolean begin = true;


void setup() {
  size(1000, 600);
  left = new Player(1);
  right = new Player(-1);
}

void draw() {
  if (begin == true) {
    background(0);
    fill(0, 0, 255);
    textSize(32);
    text("a and z move, s fire", 50, 50);
    fill(255, 0, 0);
    textSize(32);
    text("j and m move, k fire", 630, 50);
    fill(255);
    textSize(28);
    text("Press b to begin", 390, 350 );
  } else if (begin == false) {
    background(0);
    left.show();
    right.show();
    fill(0, 0, 255);
    textSize(32);
    text(leftScore, 30, 35);
    fill(255, 0, 0);
    textSize(32);
    text(rightScore, 950, 35);
    if (leftScore == victory) {
      fill(0, 0, 255);
      textSize(48);
      text("Blue win!", 400, 200);
      fill(0, 0, 255);
      textSize(32);
      text("Press space to continue", 330, 350);
    } else if (rightScore == victory) {
      fill(255, 0, 0);
      textSize(48);
      text("Red win!", 400, 200);
      fill(255, 0, 0);
      textSize(32);
      text("Press space to continue", 330, 350);
    }
  }
}

void updateRight() {
  if (right.bull.y >= left.y && right.bull.y <= left.y+left.h ) {
    rightScore++;
  }
}

void updateLeft() {
  if (left.bull.y >= right.y && left.bull.y <= right.y+right.h ) {
    leftScore++;
  }
}

void keyPressed() {
  if (key == 'a') {
    left.moveUp();
  } else if (key == 'z') {
    left.moveDown();
  }

  if (key == 'j') {
    right.moveUp();
  } else if (key == 'm') {
    right.moveDown();
  }

  if (key == 's' && leftScore<victory && rightScore <victory) {
    left.fire();
    updateLeft();
  }

  if (key == 'k' && rightScore <victory && leftScore<victory ) {
    right.fire();
    updateRight();
  }

  if (key == ' ') {
    leftScore = 0;
    rightScore = 0;
  }

  if (key == 'b') {
    begin = false;
  }
}