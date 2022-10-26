def solution(s)
  return false if s.chars.uniq.size != s.size
  s.chars.map { |x| x.ord } == s.chars.map { |x| x.ord }.sort
end
