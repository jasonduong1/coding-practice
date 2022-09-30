def solution(inputString)
  arr = inputString.split("-")
  inputString.count("-") != 5 ? false : arr.count != 6 ? false : arr.all? { |x| x.match(/^[A-F0-9]{2}$/) } ? true : false
end
