def solution(arr)
  middle = 0
  arr.size.odd? ? middle = arr[(arr.size) / 2] : middle = (arr[(arr.size) / 2] + arr[(arr.size) / 2 - 1])
  middle != arr[0] ? false : middle == arr[-1]
end
