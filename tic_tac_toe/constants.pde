//reads game after every play to check for winner
void checkWinner() {
  int winner = 0;  //declares winner as a number 
  
  // check rows for same shape repeating thrice
  for (int start = 0; start < gridSize; start++) {
    if (board[start][0] != 0) {
      if(board[start][0] == board[start][1]) {
        if(board[start][1] == board[start][2]) {
          winner = board[start][0];
        }
      }
    }
  }
  
  // check columns for same shape repeating thrice
  for (int startPoint = 0; startPoint < gridSize; startPoint++) {
    if (board[0][startPoint] != 0) {
      if(board[0][startPoint] == board[1][startPoint]){
        if(board[1][startPoint] == board[2][startPoint]){
            winner = board[0][startPoint];
        }
      }
    }
  }
  
  // check diagonals for the same shape repeated three times
  if (board[0][0] != 0) {
    if(board[0][0] == board[1][1]) {
      if(board[1][1] == board[2][2]) {
        winner = board[0][0];
      }
    }
  } 
  
  else if (board[0][2] != 0) {
    if(board[0][2] == board[1][1]) {
      if(board[1][1] == board[2][0]) {
        winner = board[0][2];
      }
    }
  }
  
  //displays winner
   if (winner != 0) {
    noLoop();
    if (winner == 2) {
      println("Computer wins!"); //Output when computer wins
    } else {
      println("You are the winner!"); //Output when user wins
      }
    } 

  //if there is no winner(tie)
  else {
    boolean isDraw = true;
    // check if all cells are filled
    for (int check = 0; check < gridSize; check++) {
      for (int cell = 0; cell < gridSize; cell++) {
        if (board[check][cell] == 0) {
          isDraw = false;
        }
      }
    }
    
    //if all cells are scanned and no competitor had three matching consecutively
    if (isDraw) {
      noLoop();
      println("It's a draw!"); // print draw to console
    }
  }
}
