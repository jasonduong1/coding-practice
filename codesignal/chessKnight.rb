def solution(cell)
  x = cell[0].ord
  y = cell[1].to_i
  moves = 0
  # top left
  moves += 1 if x - 1 > 96 && y + 2 < 9
  moves += 1 if x - 2 > 96 && y + 1 < 9
  # top right
  moves += 1 if x + 1 < 105 && y + 2 < 9
  moves += 1 if x + 2 < 105 && y + 1 < 9
  # bottom left
  moves += 1 if x - 1 > 96 && y - 2 > 0
  moves += 1 if x - 2 > 96 && y - 1 > 0
  # bottom right
  moves += 1 if x + 1 < 105 && y - 2 > 0
  moves += 1 if x + 2 < 105 && y - 1 > 0
  moves
end
