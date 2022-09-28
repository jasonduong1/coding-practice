def solution(bishop, pawn)
  (bishop[0].ord - pawn[0].ord).abs == (bishop[1].ord - pawn[1].ord).abs
end
