void drawX(int x, int y) {
  line(x+cellSize*0.1, y+cellSize*0.1, x+cellSize*0.9, y+cellSize*0.9);  //takes four parameters for x and y coordinates of start and end point
  line(x+cellSize*0.9, y+cellSize*0.1, x+cellSize*0.1, y+cellSize*0.9);
}

void drawO(int x, int y) {
  ellipse(x+cellSize/2, y+cellSize/2, cellSize*0.8, cellSize*0.8);  //takes four parameters for x, y coordinates, and height and width of ellipse
}
