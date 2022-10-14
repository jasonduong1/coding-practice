def solution(n)
  k = 1
  for i in 1..120
    k *= i
    break if k >= n
  end
  k
end
