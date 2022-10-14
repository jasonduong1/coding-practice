def solution(a, b, n)
  output = 0
  n.times do
    output += (a * b)
    a += 1
    b += 1
  end
  output
end
