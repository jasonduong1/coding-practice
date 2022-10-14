def solution(param1, param2)
  a = param1.digits
  b = param2.digits
  c = []
  for i in 0..[a, b].max_by(&:length).length - 1
    !b[i] ? c.push(a[i]) : !a[i] ? c.push(b[i]) : c.push((a[i] + b[i]) % 10)
  end
  c.reverse.join.to_i
end
