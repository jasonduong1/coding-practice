def solution(min1, min2_10, min11, s)
  minutes = 0
  cost = 0
  if min1 < s
    cost += min1
    minutes += 1
  end
  while cost < s
    if minutes < 10
      cost += min2_10
      minutes += 1
    else
      cost += min11
      minutes += 1
    end
  end
  cost > s ? minutes - 1 : minutes
end
