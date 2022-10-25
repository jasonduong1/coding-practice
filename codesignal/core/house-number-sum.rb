def solution(inputArray)
  total = 0
  inputArray.each do |x|
    break if x == 0
    total += x
  end
  total
end
