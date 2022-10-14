def solution(a, b)
  (a..b).to_a.map { |x| x.to_s(2).count("1") }.sum
end
