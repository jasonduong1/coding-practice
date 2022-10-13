def solution(value1, weight1, value2, weight2, maxW)
  if maxW >= weight1 + weight2
    (value1 + value2)
  elsif weight1 > maxW
    if weight2 > maxW
      0
    else
      value2
    end
  elsif weight2 > maxW
    value1
  elsif value1 > value2
    value1
  else
    value2
  end
end
