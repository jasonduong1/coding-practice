def solution(a)
  teams = [0, 0]
  a.each_with_index { |x, i| teams[i.even? ? 0 : 1] += x }
  teams
end
