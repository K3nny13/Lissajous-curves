class Point {
  float angle;
  int gridSize, iteration, r, speed;

  Point(int _gridSize, int _iteration, int _r, float _angle, int _speed) {
    gridSize = _gridSize;
    iteration = _iteration;
    r = _r;
    angle = _angle;
    speed = _speed;
  }
  float xPos(float _angle) {
    return (r * cos(_angle))/2;
  }

  float yPos(float _angle) {
    return (r * sin(_angle))/2;
  }

  void showX() {
    stroke(0, 180, 240);
    strokeWeight(12);
    point((gridSize / 2) + gridSize*(iteration + 1) + xPos(angle*speed), gridSize/2 + yPos(angle*speed));
  }

  void showY() {
    stroke(240, 180, 0);
    strokeWeight(12);
    point(gridSize/2 + xPos(angle*speed), (gridSize / 2) + gridSize*(iteration + 1) + yPos(angle*speed));
  }
}
