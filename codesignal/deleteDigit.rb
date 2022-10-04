def solution(n)
  arr = []
  for i in 0..n.to_s.length - 1
    str = n.to_s.chars
    str.delete_at(i)
    arr.push(str.join.to_i)
  end
  arr.max
end
