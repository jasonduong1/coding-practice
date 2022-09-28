def solution(bishop, pawn)
  board = { "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8 }
  bishop_x = board[bishop[0]]
  bishop_y = bishop[1].to_i
  pawn_x = board[pawn[0]]
  pawn_y = pawn[1].to_i
  distance = (bishop_x - pawn_x).abs
  if bishop_y + distance == pawn_y || bishop_y - distance == pawn_y
    true
  else
    false
  end
end
