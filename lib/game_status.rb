board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [0, 4, 8], [1, 4, 7], [2, 5, 8], [2, 4, 6]]

def won?(board)
<<<<<<< HEAD
   WIN_COMBINATIONS.detect do |combination|
     if (board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X") ||
        (board[combination[0]] == "O" && board[combination[1]] == "O" && board[combination[2]] == "O")
        return combination
     end
   end
end

def full?(board)
  board.all? do|position|
    if position == "X" || position == "O"
       true
    end
  end
end

def draw?(board)
  if full?(board) && !won?(board)
     true
  end
end

def over?(board)
  if draw?(board) || full?(board) || won?(board)
    true
  end
end

def winner(board)
  WIN_COMBINATIONS.detect do |combination|
    if board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X"
      return "X"
    elsif board[combination[0]] == "O" && board[combination[1]] == "O" && board[combination[2]] == "O"
      return "O"
    elsif draw?(board)
     nil
=======
  WIN_COMBINATIONS.detect do |combination|
    if board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X"
      return combination.to_a
>>>>>>> 8c3c0d5d2ff8b1bff160ce28ce8bc375887de7c9
    end
  end
end
