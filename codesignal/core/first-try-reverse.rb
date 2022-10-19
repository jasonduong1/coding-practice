def solution(arr)
  return arr if arr.size < 2
  last = arr[-1]
  first = arr[0]
  arr.delete_at(0)
  arr.delete_at(-1)
  arr.unshift(last)
  arr.push(first)
  arr
end
