def solution(arr)
  return arr if arr.size.odd?
  middle = arr[arr.size / 2] + arr[arr.size / 2 - 1]
  arr.delete_at(arr.size / 2)
  arr.delete_at(arr.size / 2)
  arr.insert(arr.size / 2, middle)
end
