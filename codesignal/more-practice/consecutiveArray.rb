def solution(statues)
  sorted_statues = statues.sort
  amount_of_statues = sorted_statues[-1] - sorted_statues[0] + 1
  amount_of_statues - statues.length
end
