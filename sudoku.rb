# -*- encoding: utf-8 -*-

require './sudoku_helper'

#level 1 - 4 まであります
board = board_by_level 1


#nil になっている部分を1~9で埋めましょう
board[0][0]=9


sudoku_print board

if sudoku_check board
  if sudoku_complete? board
    puts "complete!"
  else
    puts "not yet"
  end
else
  puts "error!"
end
