def solution(a, b)
  return true if a == b
  c = []
  d = []
  for i in (0..a.length - 1)
    if a[i] != b[i]
      c.push(a[i])
      d.push(b[i])
    end
  end
  if c.length == 2 && c == d.reverse
    return true
  else
    return false
  end
end
