def solution(inputString)
  hash = {}
  odd_count = 0
  inputString.split("").each { |x| hash[x] ? hash[x] += 1 : hash[x] = 1 }
  hash.each { |_, v| odd_count += 1 if v.odd? }
  odd_count > 1 ? false : true
end
