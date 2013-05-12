require './sudoku_helper'

board = board_by_level(ARGV[0] || 4)

def calc board
  p = nil
  9.times do |x|
    9.times do |y|
      p = x, y if board[x][y].nil?
    end
  end
  x, y = p
  (1..9).each do |n|
    board[x][y] = n
    return board if sudoku_complete? board
    if sudoku_check board
      result = calc board
      return result if result
    end
  end
  board[x][y] = nil
end

sudoku_print calc board

