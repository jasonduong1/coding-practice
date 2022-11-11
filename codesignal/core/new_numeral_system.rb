def solution(number)
  hash = alpha_num_hash
  total = hash[number]
  array = []
  ("A".."Z").each do |x|
    if hash[x] <= total
      array.push("#{x} + #{hash.key(total)}")
      total -= 1
    end
  end
  array
end

def alpha_num_hash
  hash = {}
  count = 0
  ("A".."Z").each do |x|
    hash[x] = count
    count += 1
  end
  hash
end
