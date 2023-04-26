int gridSize = 3; // size of the grid
int cellSize = 500/3; // size of each cell
int[][] board = new int[gridSize][gridSize]; //2D board array
int currentPlayer = 1; //current player

void setup() {
  size(500, 500); // sets window size
  background(255);  //sets background color
  computerMove(); // computer makes first move
}

void draw() {
  drawBoard();
  checkWinner();
 }
