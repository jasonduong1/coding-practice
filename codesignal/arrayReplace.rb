def solution(inputArray, elemToReplace, substitutionElem)
  inputArray.map { |elem| elem == elemToReplace ? substitutionElem : elem }
end
