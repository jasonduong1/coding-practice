def solution(score1, score2)
  if score1 > 7 || score2 > 7
    false
  elsif score1 == 7 || score2 == 7
    score1 + score2 == 13 || score1 + score2 == 12
  elsif score1 >= 5 && score2 >= 5
    (score1 - score2).abs == 2
  elsif score1 == 6 || score2 == 6
    true
  else
    false
  end
end
