class Player {
  float x;
  float y;
  float w;
  float h;
  float direction;
  float speedX = 30;
  float speedY = 30;
  Bullet bull;

  Player(float direction) {
    this.direction = direction;
    this.y = 300;
    this.h = 100;
    this.w = 25;
    if (direction == 1) {
      this.x = 0 ;
    } else if (direction == -1) {
      this.x = 1000-w ;
    }
  }

  void fire() {
    bull = new Bullet(x+(direction*w), y+(h/2), direction);
    bull.show();
  }

  void moveUp() {
    if (y>=h/2) {
      y = y-speedY;
    }
  }

  void moveDown() {
    if (y<=600-(h+(h/2))) {
      y = y+speedY;
    }
  }

  void show() {
    if (direction == -1) fill(255, 0, 0);
    else if (direction == 1)fill(0, 0, 255);
    rect(x, y, w, h);
    if (bull!=null) {
      for (int i = 1; i<100; i++) {
        bull.updateBullet();
        bull.show();
      }
    }
  }
}