def solution(inputString)
  return false if inputString.include? ".."
  arr = inputString.split(".")
  return false if arr.length != 4
  arr.each do |x|
    return false if x.to_i.to_s != x
    return false if x.to_i > 255
  end
  true
end
