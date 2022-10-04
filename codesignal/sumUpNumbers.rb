def solution(inputString)
  arr = inputString.scan(/[0-9]+/).map(&:to_i)
  arr.length == 0 ? 0 : arr.reduce(:+)
end
