def solution(time)
  arr = time.split(":").map(&:to_i)
  arr[0] < 24 && arr[1] < 60
end
