def solution(n, firstNumber)
  (n / 2 + firstNumber) == n ? 0 : (n / 2 + firstNumber) > n ? ((n / 2 + firstNumber) - n) : (n / 2 + firstNumber)
end
