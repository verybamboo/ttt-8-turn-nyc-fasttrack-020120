def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.strip.to_i - 1
end

def move(board, index, char = "X")
    board[index] = char
end
  
def position_taken?(board, index)
    ((board[index] == "X") || (board[index] == "O"))
end

def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index)
      return true
   end
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  
  if valid_move?(board,index)
    puts 'valid move'
    display_board(board)
    else
      puts 'invalid move'
    turn(board)
  end
  move(board, index)
  display_board(board)
end