int gridSize = 100;
int radius = 85;
float angle = 0;
float speed = 0.01;

Circle[] circlesX;
Circle[] circlesY;

Point[] pointX;
Point[] pointY;

Line[] lineX;
Line[] lineY;

Point[][] interPoints;


void setup() {
  //fullScreen(P2D);
  size(1200, 600);
  //frameRate(40);
  //background(0);
  
  circlesX = new Circle[width/gridSize - 1];
  circlesY = new Circle[height/gridSize - 1];

  pointX = new Point[width/gridSize - 1];
  pointY = new Point[height/gridSize - 1];
  
  lineX = new Line[width/gridSize - 1];
  lineY = new Line[height/gridSize - 1];

  interPoints = new Point[width/gridSize - 1][height/gridSize - 1];

}

void draw() {
  background(0);
  angle += speed;

  // X values
  for (int i = 0; i < width / gridSize -1; i++) {
    circlesX[i] = new Circle(gridSize, i, radius);
    circlesX[i].showX();

    pointX[i] = new Point(gridSize, i, radius, angle, i + 1);
    pointX[i].showX();
    
    lineX[i] = new Line(gridSize, i, radius, angle, i + 1);
    lineX[i].showX();
    
    strokeWeight(8);
    stroke(240,180,240);
    point(lineX[i].x,gridSize+gridSize/2);

  }
  
  // Y values
  for (int i = 0; i < height / gridSize -1; i++) {
    circlesY[i] = new Circle(gridSize, i, radius);
    circlesY[i].showY();

    pointX[i] = new Point(gridSize, i, radius, angle, i + 1);
    pointX[i].showY();
    
    lineY[i] = new Line(gridSize, i, radius, angle, i + 1);
    lineY[i].showY();
    
    strokeWeight(8);
    stroke(240,180,240);
    point(gridSize+gridSize/2, lineY[i].y);
    
  }
}
