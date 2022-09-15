def solution(a)
  total1 = 0
  total2 = 0
  total = []
  for i in 0..a.length - 1
    i == 0 || i.even? ? total1 += a[i] : total2 += a[i]
  end
  total.push(total1, total2)
end
