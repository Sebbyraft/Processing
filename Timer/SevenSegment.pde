class SevenSegment {
  private float x;
  private float y;
  private int[] alpha;
  private int w, h;
  
  SevenSegment(float x, float y, float w) {
    this.x = x;
    this.y = y;
    this.alpha = new int[7];
    off();
    this.w = (int)w;
    this.h = (int)w/6;
  }

  void off() {
    for (int i = 0; i < 7; i++) {
      alpha[i] = 90;
    }
  }

  void on() {
    for (int i = 0; i < 7; i++) {
      alpha[i] = 255;
    }
  }

  void num(int num) {
    if (num == 0) {
      alpha[0] = 255;
      alpha[1] = 255;
      alpha[2] = 255;
      alpha[3] = 255;
      alpha[4] = 255;
      alpha[5] = 255;
      alpha[6] = 90;
    } else if (num == 1) {
      alpha[0] = 90;
      alpha[1] = 255;
      alpha[2] = 255;
      alpha[3] = 90;
      alpha[4] = 90;
      alpha[5] = 90;
      alpha[6] = 90;
    } else if (num == 2) {
      alpha[0] = 255;
      alpha[1] = 255;
      alpha[2] = 90;
      alpha[3] = 255;
      alpha[4] = 255;
      alpha[5] = 90;
      alpha[6] = 255;
    } else if (num == 3) {
      alpha[0] = 255;
      alpha[1] = 255;
      alpha[2] = 255;
      alpha[3] = 255;
      alpha[4] = 90;
      alpha[5] = 90;
      alpha[6] = 255;
    } else if (num == 4) {
      alpha[0] = 90;
      alpha[1] = 255;
      alpha[2] = 255;
      alpha[3] = 90;
      alpha[4] = 90;
      alpha[5] = 255;
      alpha[6] = 255;
    } else if (num == 5) {
      alpha[0] = 255;
      alpha[1] = 90;
      alpha[2] = 255;
      alpha[3] = 255;
      alpha[4] = 90;
      alpha[5] = 255;
      alpha[6] = 255;
    } else if (num == 6) {
      alpha[0] = 255;
      alpha[1] = 90;
      alpha[2] = 255;
      alpha[3] = 255;
      alpha[4] = 255;
      alpha[5] = 255;
      alpha[6] = 255;
    } else if (num == 7) {
      alpha[0] = 255;
      alpha[1] = 255;
      alpha[2] = 255;
      alpha[3] = 90;
      alpha[4] = 90;
      alpha[5] = 90;
      alpha[6] = 90;
    } else if (num == 8) {
      on();
    } else if (num == 9) {
      alpha[0] = 255;
      alpha[1] = 255;
      alpha[2] = 255;
      alpha[3] = 255;
      alpha[4] = 90;
      alpha[5] = 255;
      alpha[6] = 255;
    } else {
      off();
    }
  }

  void render() {
    // Center
    fill(255, 0, 0, alpha[6]);
    rect(x, y, w, h);
    // Up
    fill(255, 0, 0, alpha[0]);
    rect(x, y-w-h, w, h);
    // Down
    fill(255, 0, 0, alpha[3]);
    rect(x, y+w+h, w, h);
    // Left-Up
    fill(255, 0, 0, alpha[5]);
    rect(x-h, y-w, h, w);
    // Left-Down
    fill(255, 0, 0, alpha[4]);
    rect(x-h, y+h, h, w);
    // Right-Up
    fill(255, 0, 0, alpha[1]);
    rect(x+w, y-w, h, w);
    // Right-Down
    fill(255, 0, 0, alpha[2]);
    rect(x+w, y+h, h, w);
  }
}
