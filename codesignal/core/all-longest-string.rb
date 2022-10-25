def solution(inputArray)
  size = inputArray.max_by(&:length).size
  array = []
  inputArray.each { |x| array.push(x) if x.size == size }
  array
end
