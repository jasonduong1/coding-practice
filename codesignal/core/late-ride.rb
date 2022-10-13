def solution(n)
  minutes = n % 60
  hours = (n - minutes) / 60
  minutes.digits.reduce(:+) + hours.digits.reduce(:+)
end
