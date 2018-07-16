def validSolution(board)
  return false unless board.all? { |row| row.sort == (1..9).to_a}
  return false unless board.transpose.all? { |row| row.sort == (1..9).to_a}

  board_copy = board.map(&:dup)
  square = []
  count = 0
  top_row = 0
  middle_row = 1
  bottom_row = 2

  loop do 
    3.times do |index| 
     square << board_copy[top_row].shift
     square << board_copy[middle_row].shift
     square << board_copy[bottom_row].shift
    end

    return false unless square.sort == (1..9).to_a

    square = []
    count += 1

    if count % 3 == 0
      top_row += 3
      middle_row += 3
      bottom_row += 3
    end

    break if count == 9
  end
  true
end
