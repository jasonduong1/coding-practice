def solution(a, b, c)
  return true if a + b == c
  return true if a - b == c
  return true if a * b == c
  return true if a / b.to_f == c.to_f
  false
end
