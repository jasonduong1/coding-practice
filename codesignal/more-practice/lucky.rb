def solution(n)
  arr = n.digits
  arr.drop(arr.size / 2).reduce(:+) == arr.take(arr.size / 2).reduce(:+)
end
