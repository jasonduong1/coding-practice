def solution(k)
  (1..k).map { |x| x.odd? ? -1 * x * x : x * x }.reduce(:+)
end
