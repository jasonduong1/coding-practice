def solution(number, width)
  str = number.to_s
  str.length >= width ? str[-width..-1] : ("0" * (width - str.length)) + str
end
