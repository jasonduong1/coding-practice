def solution(n)
  arr = n.to_s.chars.map(&:to_i)
  arr.each { |x| return false if x.odd? }
  true
end
