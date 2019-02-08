class Bullet {
  float x;
  float y;
  float radius;
  float speedX;
  float speedY;
  float direction;

  Bullet(float x, float y, float direction) {
    this.x = x;
    this.y = y;
    this.radius = 20;
    this.direction = direction;
    this.speedX = 4;
  }

  void updateBullet() {
    x = x + (direction*speedX);
  }

  void show() {
    if (direction == 1) fill(0, 0, 255);
    else if (direction == -1) fill(255,0,0);
      ellipse(x, y, radius, radius);
  }
}