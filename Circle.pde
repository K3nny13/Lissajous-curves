class Circle {
  int gridSize, iteration, r;
  
  Circle(int _gridSize, int _iteration, int _r) {
    gridSize = _gridSize;
    iteration = _iteration;
    r = _r;
  }
  
  void showX(){
    stroke(255);
    strokeWeight(2);
    noFill();
    ellipse((gridSize / 2) + gridSize*(iteration + 1), gridSize/2, r, r);
  }
  
    void showY(){
    stroke(255);
    strokeWeight(2);
    noFill();
    ellipse(gridSize/2, (gridSize / 2) + gridSize*(iteration + 1), r, r);
  }
}
