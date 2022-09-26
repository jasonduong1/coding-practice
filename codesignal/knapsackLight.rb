def solution(value1, weight1, value2, weight2, maxW)
  return (value1 + value2) if maxW >= (weight1 + weight2)
  return 0 if maxW < weight1 && maxW < weight2
  return value1 if maxW >= weight1 && maxW < weight2
  return value2 if maxW < weight1 && maxW >= weight2
  [value1, value2].max
end
