def solution(inputArray, l, r)
  inputArray[0...l] + inputArray[r + 1..-1]
end
