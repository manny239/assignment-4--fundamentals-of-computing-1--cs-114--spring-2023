//game outline draw, using variables makes easier for circle and cross drawing
void drawBoard() {
  for (int start = 0; start < gridSize; start++) {
    for (int cell = 0; cell < gridSize; cell++) {
      int x = cell * cellSize;
      int y = start * cellSize;
      rect(x, y, cellSize, cellSize);
      
      if (board[start][cell] == 1) {
        drawO(x, y);
      } 
      
      else if (board[start][cell] == 2) {
        drawX(x, y);
      }
    }
  }
}
