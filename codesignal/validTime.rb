def solution(time)
  arr = time.split(":")
  return false if arr[0].to_i >= 24
  return false if arr[1].to_i >= 60
  true
end
