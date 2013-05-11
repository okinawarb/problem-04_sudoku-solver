# -*- encoding: utf-8 -*-

#初期状態の配列を返します。難易度はレベル1〜レベル4
def board_by_level level
  File.open("level#{level}.txt") do |file|
    data = file.read
    shuffled = (1..9).to_a.shuffle
    lines = data.each_char.map{ |c|
      c == '#' ? shuffled.pop : c
    }.join.split("\n")
    board = 9.times.map{9.times.map{}}
    lines.each_with_index do |line, y|
      line.split(" ").each_with_index do |c, x|
        n = c.to_i
        board[x][y] = n unless n.zero?
      end
    end
    board
  end
end

#間違っていればfalse(数字の重複がある等) そうでないならtrue
def sudoku_check board
  v_check = 9.times.all?{|i| sudoku_vline_check board, i}
  h_check = 9.times.all?{|i| sudoku_hline_check board, i}
  p_check = 3.times.all?{|i| 3.times.all?{|j| sudoku_block_check board, i, j}}
  v_check & h_check & p_check
end

#数独が完成していればtrue, 未完成もしくは間違っていればfalse
def sudoku_complete? board
  sudoku_check(board) && 9.times.all?{|x| 9.times.all?{|y| board[x][y]}}
end

#数独を表示します。完成していれば緑色、間違っていればその列は赤色で表示されます。
def sudoku_print board
  verrors = sudoku_vline_errors board
  herrors = sudoku_hline_errors board
  perrors = sudoku_block_errors board
  print "\e[32m" if sudoku_complete? board
  9.times do |y|
    9.times do |x|
      p = [x/3, y/3]
      print " " unless x == 0
      value = board[x][y] || '-'
      if verrors.include?(x) || herrors.include?(y) || perrors.include?(p)
        print "\e[31m#{value}\e[m"
      else
        print value
      end
    end
    puts
  end
  print "\e[m"
end

#左からx番目の列に重複が無いか確認します。true/false
def sudoku_vline_check board, x
  line = 9.times.map{|y| board[x][y]}.compact
  line.uniq.size == line.size && line.all?{|n| (1..9).include? n}
end

#上からy番目の行に重複が無いか確認します。true/false
def sudoku_hline_check board, y
  line = 9.times.map{|x| board[x][y]}.compact
  line.uniq.size == line.size && line.all?{|n| (1..9).include? n}
end

#i,jの位置のブロックに重複が無いか確認します。true/false
def sudoku_block_check board, i, j
  block = 3.times.map{|x|
    3.times.map{|y|
      board[3 * i + x][3 * j + y]
    }
  }.flatten.compact
  block.uniq.size == block.size && block.all?{|n| (1..9).include? n}
end

#問題がある列一覧を返します。ex [0,3,8] 問題が無い場合は[]
def sudoku_vline_errors board
  9.times.reject{|i| sudoku_vline_check board, i}
end

#問題がある行一覧を返します。ex [0,3,8] 問題が無い場合は[]
def sudoku_hline_errors board
  9.times.reject{|i| sudoku_hline_check board, i}
end

#問題があるブロック一覧を返します。ex [[0,0],[2,2],[1,2]] 問題が無い場合は[]
def sudoku_block_errors board
  xy_array = 3.times.map{|x|3.times.map{|y|[x,y]}}.flatten 1
  xy_array.reject{|i, j| sudoku_block_check board, i, j}
end
