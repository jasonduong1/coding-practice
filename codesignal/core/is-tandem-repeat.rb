def solution(inputString)
  return false if inputString.size.odd?
  inputString[0...(inputString.size / 2)] == inputString[(inputString.size / 2)..-1]
end
