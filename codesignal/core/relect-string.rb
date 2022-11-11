def solution(inputString)
  hash = hash_reverse
  inputString.chars.map { |x| hash[x] }.join
end

def hash_reverse
  hash = {}
  reverse = ("a".."z").to_a.reverse
  count = 0
  ("a".."z").each do |x|
    hash[x] = reverse[count]
    count += 1
  end
  hash
end
