def solution(inputArray)
  arr = inputArray.sort
  for i in 2..arr[-1] + 1
    return i if arr.all? { |x| x % i != 0 }
  end
end
