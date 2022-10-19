def solution(inputArray, elemToReplace, substitutionElem)
  inputArray.map { |x| x == elemToReplace ? x = substitutionElem : x = x }
end
