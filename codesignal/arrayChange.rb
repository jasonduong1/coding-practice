def solution(inputArray)
  count = 0
  for i in (0..inputArray.length - 2)
    if inputArray[i] >= inputArray[i + 1]
      diff = inputArray[i] + 1 - inputArray[i + 1]
      inputArray[i + 1] = inputArray[i] + 1
      count += diff
    end
  end
  count
end
