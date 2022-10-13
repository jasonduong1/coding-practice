def solution(a, b)
  return true if a > b
  a.odd? != b.odd?
end
