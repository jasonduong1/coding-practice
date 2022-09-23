def solution(n, firstNumber)
  total = firstNumber + n / 2
  total < n ? (return total) : total == n ? (return 0) : (return total % n)
end
