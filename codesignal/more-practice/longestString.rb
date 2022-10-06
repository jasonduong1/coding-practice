def solution(inputArray)
  longest_length = inputArray.max_by(&:length).length
  output = []
  inputArray.each { |str| output.push(str) if str.length == longest_length }
  output
end
