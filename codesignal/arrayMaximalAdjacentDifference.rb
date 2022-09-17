def solution(inputArray)
  diff = 0
  inputArray.each_cons(2).map { |x, y| diff = (x - y).abs if (x - y).abs > diff }
  diff
end
