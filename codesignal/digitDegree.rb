def solution(n)
  count = 0
  while n > 9
    n = n.to_s.split("").reduce(0) { |a, b| a.to_i + b.to_i }
    count += 1
  end
  count
end
