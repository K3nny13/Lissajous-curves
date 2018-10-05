class Line {
  float angle;
  float x;
  float y;
  int gridSize, iteration, r, speed;

  Line(int _gridSize, int _iteration, int _r, float _angle, int _speed) {
    gridSize = _gridSize;
    iteration = _iteration;
    r = _r;
    angle = _angle;
    speed = _speed;

  }
  void xPos() {
    x = (r * cos(angle*speed))/2 + (gridSize / 2) + gridSize*(iteration + 1);
  }

  void yPos() {
    y = (r * sin(angle*speed))/2 + (gridSize / 2) + gridSize*(iteration + 1);
  }

  void showX() {
    xPos();
    stroke(0, 180, 240);
    strokeWeight(1);
    line(x, 0, x, height);
  }
  void showY() {
    yPos();
    stroke(240, 180, 0);
    strokeWeight(1);
    line(0, y, width, y);
  }
}
