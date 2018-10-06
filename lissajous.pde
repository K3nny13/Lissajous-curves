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

float[] xValues;
float[] yValues;

PShape[][] curves;

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

  xValues = new float[width/gridSize - 1];
  yValues = new float[height/gridSize - 1];

  curves = new PShape[width/gridSize - 1][height/gridSize - 1];

  for (int i = 0; i < width / gridSize -1; i++) {
    for (int y = 0; y < height / gridSize -1; y++) {
      strokeWeight(2);
      curves[i][y] = createShape();
      curves[i][y].beginShape();
      curves[i][y].noFill();
      curves[i][y].stroke(255);
      curves[i][y].strokeWeight(2);
    }
  }
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

    xValues[i] = lineX[i].x;
  }

  // Y values
  for (int i = 0; i < height / gridSize -1; i++) {
    circlesY[i] = new Circle(gridSize, i, radius);
    circlesY[i].showY();

    pointX[i] = new Point(gridSize, i, radius, angle, i + 1);
    pointX[i].showY();

    lineY[i] = new Line(gridSize, i, radius, angle, i + 1);
    lineY[i].showY();

    yValues[i] = lineY[i].y;
  }

  // Intersecting Points
  for (int i = 0; i < width / gridSize -1; i++) {
    for (int y = 0; y < height / gridSize -1; y++) {
      strokeWeight(8);
      stroke(255);
      point(xValues[i], yValues[y]);
    }
  }

  for (int i = 0; i < width / gridSize -1; i++) {
    for (int y = 0; y < height / gridSize -1; y++) {
      strokeWeight(2);
      curves[i][y].vertex(xValues[i], yValues[y]);
      curves[i][y].endShape();
      shape(curves[i][y]);
    }
  }
}
