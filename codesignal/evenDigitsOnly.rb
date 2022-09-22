def solution(n)
  arr = n.to_s.split("")
  arr.each { |x| return false if x.to_i.odd? }
  true
end
