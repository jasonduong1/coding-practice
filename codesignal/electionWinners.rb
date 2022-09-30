def solution(votes, k)
  current_winner = votes.max
  winners = 0
  votes.each do |candidate|
    if k > 0 && candidate + k > current_winner
      winners += 1
    end
    if k == 0 && candidate == current_winner && votes.count(candidate) == 1
      winners += 1
    end
  end
  winners
end
