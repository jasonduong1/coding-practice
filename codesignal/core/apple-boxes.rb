def solution(k)
  difference = 0
  for i in 1..k
    i.odd? ? difference -= i ** 2 : difference += i ** 2
  end
  difference
end
