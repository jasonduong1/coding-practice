def solution(s)
  arr = s.chars
  hash = {}
  for x in arr
    hash[x] ? hash[x] += 1 : hash[x] = 1
  end
  hash.length
end
