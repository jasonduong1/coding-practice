def solution(a)
  hash = {}
  for i in a
    sum = 0
    a.each { |x| sum += (x - i).abs }
    hash[i] = sum
  end
  hash.sort_by { |_, value| value }.first.first
end
