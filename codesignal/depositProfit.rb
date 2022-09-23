def solution(deposit, rate, threshold)
  x = deposit
  year = 0
  while x < threshold
    x += (x * rate / 100)
    year += 1
  end
  year
end
