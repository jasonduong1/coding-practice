def solution(inputArray, k)
  greatest = 0
  inputArray.each_cons(k).map { |a| greatest = (a.reduce(:+)) if a.reduce(:+) > greatest }
  greatest
end
